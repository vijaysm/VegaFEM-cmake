/*************************************************************************
 *                                                                       *
 * Vega FEM Simulation Library Version 2.0                               *
 *                                                                       *
 * "objMeshGPUDeformer" library , Copyright (C) 2007 CMU, 2009 MIT,      *
 *                                                        2013 USC       *
 * All rights reserved.                                                  *
 *                                                                       *
 * Code author: Jernej Barbic                                            *
 * http://www.jernejbarbic.com/code                                      *
 *                                                                       *
 * Research: Jernej Barbic, Fun Shing Sin, Daniel Schroeder,             *
 *           Doug L. James, Jovan Popovic                                *
 *                                                                       *
 * Funding: National Science Foundation, Link Foundation,                *
 *          Singapore-MIT GAMBIT Game Lab,                               *
 *          Zumberge Research and Innovation Fund at USC                 *
 *                                                                       *
 * This library is free software; you can redistribute it and/or         *
 * modify it under the terms of the BSD-style license that is            *
 * included with this library in the file LICENSE.txt                    *
 *                                                                       *
 * This library is distributed in the hope that it will be useful,       *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the file     *
 * LICENSE.TXT for more details.                                         *
 *                                                                       *
 *************************************************************************/

static char GPGPUuUqCode [] = "\n"
"// Define outputs from vertex shader.\n"
"struct vertout\n"
"{\n"
"	float4 HPosition : POSITION;\n"
"	float4 Color : COLOR;\n"
"	float2 texCoord : TEXCOORD1;\n"
"};\n"
"\n"
"// ************* fragment shader, pass 1 ****************\n"
"\n"
"void uUq(float2 quadTexCoord : TEXCOORD0,\n"
"   	     uniform sampler2D Utex,\n"
"		 uniform float q[R],\n"
"		 uniform float size,\n"
"		 uniform float SIZE,\n"
"		 uniform float texUDelta,\n"
"		 uniform float SIZEdivR,\n"
"		 out float4 color : COLOR\n"
"		  )\n"
"{\n"
"  // size is size of vertex texture\n"
"  // SIZE is size of the texture containing the modes\n"
"\n"
"  // compute tex coords of the modes of the current DOF\n"
"  float j = floor(quadTexCoord.x * size); // 0-indexed column in the vertex texture image where this vertex is located\n"
"  float i = floor(quadTexCoord.y * size); // 0-indexed row in the vertex texture image where this vertex is located\n"
"  float vertexIndex = i * size + j; // 0-index of the vertex corresponding to given quadTexCoord\n"
"\n"
"  // ------ compute deformation u of vertex with index 'vertexIndex' ----\n"
"\n"
"  //float SIZEdivR = floor (SIZE / R); // number of vertices that fit in a row of the mode matrix (i.e. U) texture image, this is now given as a parameter\n"
"  // R = num modes\n"
"\n"
"  float I = floor (vertexIndex / SIZEdivR); // 0-indexed row in the mode texture containing the given vertex data\n"
"  float J = (vertexIndex - I * SIZEdivR) * R; // 0-index column containing the first deformation mode of this vertex\n"
"\n"
"  //float texUDelta = 1.0 / SIZE; // this is now given as a parameter\n"
"\n"
"  float2 uv;\n"
"  uv.x = (0.5 + J) * texUDelta;\n"
"  uv.y = (0.5 + I) * texUDelta;\n"
"\n"
"  // for non-meaningful pixels in last row of the vertex texture, these tex coords can be outside unit rectangle, but that's ok\n"
"\n"
"  // compute u = U * q\n"
"  color = float4(0,0,0,1);\n"
"  \n"
"  for(int i=0; i<R; i++)\n"
"  {\n"
"    color += q[i] * tex2D(Utex,uv+float2(i * texUDelta,0));\n"
"    //color += 10.0 * tex2D(Utex,uv+float2(i * texUDelta,0));\n"
"    //color += q[i] * float4(10.0, 0.0, 0.0 ,0.0);\n"
"  }\n"
"\n"
" //color = 0.9;\n"
" //color = float4(5.0, 0.0, 0.0, 0.9);\n"
"\n"
" //color = float4(0.0, 1.0, 0.0, 1.0);\n"
"\n"
"}\n"
"\n"
"\n"
"// ************* fragment shader, pass 2 ****************\n"
"void fragmentShaderPass2(vertout IN,\n"
"		  out float4 color : COLOR,\n"
"		  uniform sampler2D texPass2 : TEXUNIT1\n"
"		  )\n"
"{\n"
"        //float2 uv = float2(0.5,0.5);\n"
"\n"
"	float4 texCol = tex2D(texPass2, IN.texCoord);\n"
"	//float4 texCol = tex2D(texPass2, uv);\n"
"\n"
"	color = IN.Color * texCol;\n"
"	//color = texCol;\n"
"	//color = float4(0,0,1,0);\n"
"	//color = IN.Color;\n"
"}\n"
"\n"
"\n"
"// Define inputs from application.\n"
"struct appin\n"
"{\n"
"	float4 Position : POSITION;\n"
"	float4 Normal : NORMAL;\n"
"	float2 vertexTextureCoord : TEXCOORD0;\n"
"	float2 texCoord : TEXCOORD1;\n"
"	float4 Color : COLOR0;\n"
"};\n"
"\n"
"\n"
"// Define outputs from vertex shader.\n"
"struct vertout\n"
"{\n"
"	float4 HPosition : POSITION;\n"
"	float4 Color : COLOR;\n"
"	float2 texCoord : TEXCOORD1;\n"
"};\n"
"\n"
"\n"
"// ************* vertex shader for triangles, pass 2 ****************\n"
"\n"
"vertout vertexShaderPass2(appin IN,\n"
"			 uniform sampler2D tex : TEXUNIT0,\n"
"			 //uniform float q0,\n"
" 			 uniform float4 Ka, \n"
"			 uniform float4 Kd, \n"
"			 uniform float4 Ks, \n"
"			 uniform float4 shininess, \n"
"			 uniform float4x4 ModelViewProj,\n"
"			 uniform float4x4 ModelViewIT,\n"
"			 uniform float4 LightPos1,\n"
"			 uniform float4 LightPos2,\n"
"			 uniform float4 LightPos3,\n"
"			 uniform float4 LightPos4,\n"
"			 uniform float Light1Intensity, \n"
"			 uniform float Light2Intensity, \n"
"			 uniform float Light3Intensity, \n"
"			 uniform float Light4Intensity, \n"
"			 uniform float AmbientIntensity \n"
"			 )\n"
"{\n"
"	vertout OUT;\n"
"\n"
"       OUT.texCoord = IN.texCoord;\n"
"	float4 displacement = tex2D(tex,IN.vertexTextureCoord);\n"
"	//float4 displacement = tex2D(tex,float2(0.5,0.5));\n"
"	//float4 displacement = float4(0.0, 4.0, 0.0, 1.0);\n"
"\n"
"	float4 displacedPosition = IN.Position + displacement;\n"
"	//float4 displacedPosition = IN.Position + float4(1.0, 0.0, 0.0, 1.0);\n"
"	displacedPosition.w = 1.0;\n"
"\n"
"	// Transform vertex position into homogenous clip-space.\n"
"	OUT.HPosition = mul(ModelViewProj, displacedPosition);\n"
"\n"
"	// Transform normal from model-space to view-space.\n"
"	float3 normalVec = normalize(mul(ModelViewIT, IN.Normal).xyz);\n"
"\n"
"	float4 lighting = float4(0,0,0,0);\n"
"	float4 lightV;\n"
"	float3 lightVec;\n"
"	float3 eyeVec;\n"
"       float3 reflectedVec;\n"
"	float diffuse;\n"
"	float specular;\n"
"\n"
"\n"
"   	// *** ==== process light 1 === ***\n"
"	lightV = LightPos1 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	//lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"	lightVec = normalize(lightV.xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light1Intensity,Light1Intensity,Light1Intensity,Light1Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"	// *** ==== process light 2 ==== ***\n"
"	lightV = LightPos2 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	//lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"	lightVec = normalize(lightV.xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light2Intensity,Light2Intensity,Light2Intensity,Light2Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"	// *** ==== process light 3 ==== ***\n"
"	lightV = LightPos3 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	//lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"	lightVec = normalize(lightV.xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light3Intensity,Light3Intensity,Light3Intensity,Light3Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"	// *** ==== process light 4 ==== ***\n"
"	lightV = LightPos4 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	//lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"	lightVec = normalize(lightV.xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light4Intensity,Light4Intensity,Light4Intensity,Light4Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"   // *** === add material properties === ***\n"
"\n"
"	// Combine diffuse and specular contributions and\n"
"	// output the final vertex color.\n"
"       lighting.x += AmbientIntensity; \n"
"       //Ks = float4(0.8, 0.8, 0.8, 1.0) ;\n"
"	OUT.Color.rgba = lighting.x * Ka + lighting.y * Kd + lighting.z * Ks;\n"
"       //float len = sqrt(dot(IN.Normal, IN.Normal));\n"
"	//OUT.Color.rgb = float3(len, len, len);\n"
"	//OUT.Color.rgb = -IN.Normal;\n"
"	//OUT.Color.rgb = normalVec;\n"
"	//OUT.Color.rgb = float3(lighting.y, lighting.y, lighting.y);\n"
"	//OUT.Color.rgb = float3(Light3Intensity, Light3Intensity, Light3Intensity);\n"
"	//OUT.Color = Kd;\n"
"	OUT.Color.a = 1.0;\n"
"	//OUT.Color.rgba = float4(1,0,0,1);\n"
"	//OUT.Color.rgba = displacement;\n"
"\n"
"	return OUT;\n"
"}\n"
"\n"
"// ************* vertex shader for triangles' shadow, pass 2 ****************\n"
"\n"
"vertout vertexShaderShadowPass2(appin IN,\n"
"			 uniform sampler2D tex : TEXUNIT0,\n"
"			 uniform float4x4 ModelViewProj,\n"
"			 uniform float ShadowIntensity\n"
"			 )\n"
"{\n"
"	vertout OUT;\n"
"\n"
"       OUT.texCoord = IN.texCoord;\n"
"	float4 displacement = tex2D(tex,IN.vertexTextureCoord);\n"
"\n"
"	float4 displacedPosition = IN.Position + displacement;\n"
"	displacedPosition.w = 1.0;\n"
"\n"
"	// Transform vertex position into homogenous clip-space.\n"
"	OUT.HPosition = mul(ModelViewProj, displacedPosition);\n"
"\n"
"	OUT.Color.rgba = float4(ShadowIntensity,ShadowIntensity,ShadowIntensity,1);\n"
"\n"
"	return OUT;\n"
"}\n"
"// ************* vertex shader for triangles, pass 2 ****************\n"
"\n"
"vertout vertexShaderPass2WithDefoNormals(appin IN,\n"
"			 uniform sampler2D tex : TEXUNIT0,\n"
"			 uniform sampler2D texNormals : TEXUNIT1,\n"
"			 //uniform float q0,\n"
" 			 uniform float4 Ka, \n"
"			 uniform float4 Kd, \n"
"			 uniform float4 Ks, \n"
"			 uniform float4 shininess, \n"
"			 uniform float4x4 ModelViewProj,\n"
"			 uniform float4x4 ModelViewIT,\n"
"			 uniform float4 LightPos1,\n"
"			 uniform float4 LightPos2,\n"
"			 uniform float4 LightPos3,\n"
"			 uniform float4 LightPos4,\n"
"			 uniform float Light1Intensity, \n"
"			 uniform float Light2Intensity, \n"
"			 uniform float Light3Intensity, \n"
"			 uniform float Light4Intensity, \n"
"			 uniform float AmbientIntensity \n"
"			 )\n"
"{\n"
"	vertout OUT;\n"
"\n"
"   OUT.texCoord = IN.texCoord;\n"
"	//float4 displacement = tex2D(tex,float2(0.5,0.5));\n"
"	float4 displacement = tex2D(tex,IN.vertexTextureCoord);\n"
"	//float4 displacement = float4(-5.0, 3.0, 0.0, 1.0);\n"
"\n"
"	float4 displacedPosition = IN.Position + displacement;\n"
"	displacedPosition.w = 1.0;\n"
"\n"
"	// Transform vertex position into homogenous clip-space.\n"
"	OUT.HPosition = mul(ModelViewProj, displacedPosition);\n"
"\n"
"   float4 deltaNormal = tex2D(texNormals,IN.vertexTextureCoord);\n"
"   float3 dynamicNormal = normalize(IN.Normal.xyz + deltaNormal.xyz);\n"
"   float4 normal4;\n"
"   normal4.xyz = dynamicNormal;\n"
"   normal4.w = 1.0;\n"
"	// Transform normal from model-space to view-space.\n"
"	float3 normalVec = normalize(mul(ModelViewIT, normal4).xyz);\n"
"\n"
"	float4 lighting = float4(0,0,0,0);\n"
"	float4 lightV;\n"
"	float3 lightVec;\n"
"	float3 eyeVec;\n"
"   float3 reflectedVec;\n"
"	float diffuse;\n"
"	float specular;\n"
"\n"
"\n"
"   // *** ==== process light 1 === ***\n"
"	lightV = LightPos1 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light1Intensity,Light1Intensity,Light1Intensity,Light1Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"	// *** ==== process light 2 ==== ***\n"
"	lightV = LightPos2 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light2Intensity,Light2Intensity,Light2Intensity,Light2Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"	// *** ==== process light 3 ==== ***\n"
"	lightV = LightPos3 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light3Intensity,Light3Intensity,Light3Intensity,Light3Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"	// *** ==== process light 4 ==== ***\n"
"	lightV = LightPos4 - displacedPosition;\n"
"	lightV.w = 1.0;\n"
"	lightVec = normalize(mul(ModelViewIT, lightV).xyz);\n"
"\n"
"	eyeVec = float3(0.0, 0.0, 1.0);\n"
"	//float3 halfVec = normalize(lightVec + eyeVec);\n"
"	reflectedVec = normalize(lightVec - 2*(lightVec-dot(lightVec,normalVec)*normalVec));\n"
"\n"
"	// Calculate diffuse component\n"
"	diffuse = dot(normalVec, lightVec);\n"
"\n"
"	// Calculate specular component.\n"
"	//specular = dot(normalVec, halfVec);\n"
"	specular = dot(normalVec, reflectedVec);\n"
"\n"
"	// Use the lit function to compute lighting vector from diffuse and specular values.\n"
"	lighting += float4(Light4Intensity,Light4Intensity,Light4Intensity,Light4Intensity) \n"
"	  * lit(diffuse, specular, shininess);\n"
"\n"
"\n"
"   // *** === add material properties === ***\n"
"\n"
"	// Combine diffuse and specular contributions and\n"
"	// output final vertex color.\n"
"   lighting.x += AmbientIntensity; \n"
"   //Ks = float4(0.8, 0.8, 0.8, 1.0) ;\n"
"	OUT.Color.rgba = lighting.x * Ka + lighting.y * Kd + lighting.z * Ks;\n"
"	OUT.Color.a = 1.0;\n"
"\n"
"	return OUT;\n"
"}\n"
"\n"
"// ************* vertex shader for points, pass 2 ****************\n"
"\n"
"vertout vertexShader_Points_Pass2(appin IN,\n"
"		     uniform sampler2D tex : TEXUNIT0,\n"
"			 uniform float4x4 ModelViewProj,\n"
"			 uniform float4x4 ModelViewIT\n"
"			 )\n"
"{\n"
"	vertout OUT;\n"
"\n"
"	float4 displacement = tex2D(tex,IN.vertexTextureCoord);\n"
"	//float4 displacement = 0;\n"
"\n"
"	float4 displacedPosition = IN.Position + displacement;\n"
"	displacedPosition.w = 1.0;\n"
"\n"
"	// Transform vertex position into homogenous clip-space.\n"
"	OUT.HPosition = mul(ModelViewProj, displacedPosition);\n"
"\n"
"	OUT.Color = IN.Color;\n"
"\n"
"	//OUT.Color = float4(0,0,1,1);\n"
"\n"
"	return OUT;\n"
"}\n"
"\n"
"// ************* vertex shader for edges, pass 2 ****************\n"
"\n"
"vertout vertexShader_Edges_Pass2(appin IN,\n"
"		     uniform sampler2D tex : TEXUNIT0,\n"
"			 uniform float4x4 ModelViewProj,\n"
"			 uniform float4x4 ModelViewIT\n"
"			 )\n"
"{\n"
"	vertout OUT;\n"
"\n"
"	float4 displacement = tex2D(tex,IN.vertexTextureCoord);\n"
"	//float4 displacement = 0;\n"
"\n"
"	float4 displacedPosition = IN.Position + displacement;\n"
"	displacedPosition.w = 1.0;\n"
"\n"
"	// Transform vertex position into homogenous clip-space.\n"
"	OUT.HPosition = mul(ModelViewProj, displacedPosition);\n"
"\n"
"	OUT.Color = IN.Color;\n"
"\n"
"	//OUT.Color = float4(0,0,1,1);\n"
"\n"
"	return OUT;\n"
"}\n";
