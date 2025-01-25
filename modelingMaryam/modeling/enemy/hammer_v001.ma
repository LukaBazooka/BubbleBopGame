//Maya ASCII 2024 scene
//Name: hammer_v001.ma
//Last modified: Sat, Jan 25, 2025 12:31:04 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.5.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Education v2009 (Build: 22631)";
fileInfo "UUID" "7E703238-48AE-76BE-889A-89B63C0EDE25";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "EEDEA801-45E8-8EF9-5DA8-AB996D10C93F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -153.456959460729 108.68882602667354 -0.26105779779080518 ;
	setAttr ".r" -type "double3" -26.138352727222699 1351.8000000009336 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A4D777A-4A65-C8BB-3152-E7A6AE021983";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 170.6142226992078;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 33.975654281443724 2.6228242904076433 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EE06A6AB-406D-F02A-11CA-129FC48C7531";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DF7A7507-43F5-BE41-29D7-C894C6CF5020";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "6B33D361-4DDF-1600-8BC0-4BAADAF818CA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7ACB7666-4A90-A5BC-66C2-FCBF50D2EEE3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "99DA1037-4A22-6482-70E6-4AA3D096AB6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1269C93B-43B8-69A3-6058-6987505A9BD8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "back";
	rename -uid "AE292667-48C6-65E2-BF02-619C64378B70";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2186293288447064e-13 53.576851250915858 -1001.5433733716943 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "0C45BE27-4BEF-8429-EB41-F1A5BB93BC3F";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 995.08636260933645;
	setAttr ".ow" 28.254030578422103;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".tp" -type "double3" 0 53.576851250915858 -6.4570107623578963 ;
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "hammer_grp1";
	rename -uid "71E54BE5-47A0-457F-A3D4-DD8BE3B7E359";
	setAttr ".v" no;
createNode transform -n "hammerHandle_geo" -p "hammer_grp1";
	rename -uid "F6182317-4008-6611-2BD7-F3B17802D3E5";
createNode mesh -n "hammerHandle_geoShape" -p "hammerHandle_geo";
	rename -uid "79360AB8-4C1E-5B0D-E07D-E5A29B1284F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.49991535989101976 0.49981532286619768 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0.063042879 0.00027675927
		 0.094584197 1.4156103e-07 0.09449327 0.76876044 0.076616317 0.7689172 0.1261254 0.00028422102
		 0.11237016 0.76892143 0.031511545 0.0011139512 0.058744967 0.76939178 0.15765658
		 0.0011288524 0.13024139 0.76940012 0 0.0025114529 0.040884912 0.7701838 0.18916777
		 0.0025338344 0.1481013 0.77019644 0.25671461 0.00027675927 0.28825587 1.4156103e-07
		 0.28816494 0.76876044 0.27028802 0.7689172 0.31979704 0.00028419495 0.30604184 0.76892143
		 0.22518322 0.0011139475 0.25241667 0.76939172 0.35132822 0.0011288524 0.32391307
		 0.76940012 0.1936717 0.0025114529 0.23455657 0.7701838 0.38283938 0.0025338307 0.34177294
		 0.77019644 0.25862968 0.88499165 0.2363258 0.90729547 0.19141313 0.84007889 0.20718437
		 0.9193663 0.27070051 0.85585016 0.17564186 0.91936624 0.27070051 0.82430768 0.14650044
		 0.90729547 0.25862974 0.79516625 0.12419653 0.88499165 0.23632586 0.77286232 0.11212572
		 0.85585022 0.20718443 0.76079154 0.11212572 0.82430762 0.17564189 0.76079148 0.12419653
		 0.79516619 0.14650044 0.77286232 0.929075 0.95350873 0.91643363 0.96615016 0.89097798
		 0.92805314 0.89991689 0.97299159 0.93591648 0.93699193 0.88203925 0.97299159 0.93591648
		 0.91911435 0.86552244 0.96615016 0.929075 0.90259755 0.85288101 0.95350873 0.91643363
		 0.88995618 0.84603953 0.93699199 0.89991683 0.8831147 0.84603953 0.91911435 0.88203919
		 0.8831147 0.85288101 0.90259755 0.86552238 0.88995618 0.50648874 0.76863784 0.47494751
		 0.76892042 0.474893 0.00016017724 0.49276993 3.1199306e-08 0.44340625 0.76864237
		 0.45701608 2.5671907e-06 0.38734341 0.00028257072 0.41888463 0 0.41893908 0.76876044
		 0.40106219 0.7689206 0.45042589 0.00027809991 0.43681601 0.7689181;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  3.13686609 0 -1.29933035 2.40085387 0 -2.40085125
		 1.29933381 0 -3.13686466 1.7202026e-06 0 -3.39531827 -1.29933059 0 -3.13686609 -2.40085173 0 -2.40085363
		 -3.1368649 0 -1.29933345 -3.39531851 0 -1.2266993e-06 -3.13686562 0 1.29933107 -2.4008534 0 2.4008522
		 -1.29933274 0 3.13686538 -5.059419e-07 0 3.39531851 1.29933178 0 3.13686562 2.40085268 0 2.40085292
		 3.13686538 0 1.29933214 3.39531851 0 -1.2438679e-08 1.77791142 32.25448608 -0.73643368
		 1.36075461 32.25448608 -1.36075342 0.73643571 32.25448608 -1.77791035 9.7497548e-07 32.25448608 -1.92439663
		 -0.73643398 32.25448608 -1.77791119 -1.36075354 32.25448608 -1.36075449 -1.77791071 32.25448608 -0.73643547
		 -1.92439699 32.25448608 -6.6396467e-07 -1.77791119 32.25448608 0.73643422 -1.36075437 32.25448608 1.36075377
		 -0.736435 32.25448608 1.77791083 -2.8675748e-07 32.25448608 1.92439699 0.73643452 32.25448608 1.77791107
		 1.36075401 32.25448608 1.36075413 1.77791107 32.25448608 0.73643488 1.92439699 32.25448608 2.4253199e-08
		 0 0 0 0 32.25448608 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 18 22 23 19
		f 4 1 34 -18 -34
		mu 0 4 22 26 27 23
		f 4 2 35 -19 -35
		mu 0 4 62 63 64 65
		f 4 3 36 -20 -36
		mu 0 4 63 66 67 64
		f 4 4 37 -21 -37
		mu 0 4 10 6 7 11
		f 4 5 38 -22 -38
		mu 0 4 6 0 3 7
		f 4 6 39 -23 -39
		mu 0 4 0 1 2 3
		f 4 7 40 -24 -40
		mu 0 4 1 4 5 2
		f 4 8 41 -25 -41
		mu 0 4 4 8 9 5
		f 4 9 42 -26 -42
		mu 0 4 8 12 13 9
		f 4 10 43 -27 -43
		mu 0 4 68 69 70 71
		f 4 11 44 -28 -44
		mu 0 4 69 72 73 70
		f 4 12 45 -29 -45
		mu 0 4 24 20 21 25
		f 4 13 46 -30 -46
		mu 0 4 20 14 17 21
		f 4 14 47 -31 -47
		mu 0 4 14 15 16 17
		f 4 15 32 -32 -48
		mu 0 4 15 18 19 16
		f 3 -1 -49 49
		mu 0 3 28 29 30
		f 3 -2 -50 50
		mu 0 3 32 28 30
		f 3 -3 -51 51
		mu 0 3 34 32 30
		f 3 -4 -52 52
		mu 0 3 36 34 30
		f 3 -5 -53 53
		mu 0 3 38 36 30
		f 3 -6 -54 54
		mu 0 3 40 38 30
		f 3 -7 -55 55
		mu 0 3 42 40 30
		f 3 -8 -56 56
		mu 0 3 44 42 30
		f 3 -9 -57 57
		mu 0 3 43 44 30
		f 3 -10 -58 58
		mu 0 3 41 43 30
		f 3 -11 -59 59
		mu 0 3 39 41 30
		f 3 -12 -60 60
		mu 0 3 37 39 30
		f 3 -13 -61 61
		mu 0 3 35 37 30
		f 3 -14 -62 62
		mu 0 3 33 35 30
		f 3 -15 -63 63
		mu 0 3 31 33 30
		f 3 -16 -64 48
		mu 0 3 29 31 30
		f 3 16 65 -65
		mu 0 3 45 46 47
		f 3 17 66 -66
		mu 0 3 46 48 47
		f 3 18 67 -67
		mu 0 3 48 50 47
		f 3 19 68 -68
		mu 0 3 50 52 47
		f 3 20 69 -69
		mu 0 3 52 54 47
		f 3 21 70 -70
		mu 0 3 54 56 47
		f 3 22 71 -71
		mu 0 3 56 58 47
		f 3 23 72 -72
		mu 0 3 58 60 47
		f 3 24 73 -73
		mu 0 3 60 61 47
		f 3 25 74 -74
		mu 0 3 61 59 47
		f 3 26 75 -75
		mu 0 3 59 57 47
		f 3 27 76 -76
		mu 0 3 57 55 47
		f 3 28 77 -77
		mu 0 3 55 53 47
		f 3 29 78 -78
		mu 0 3 53 51 47
		f 3 30 79 -79
		mu 0 3 51 49 47
		f 3 31 64 -80
		mu 0 3 49 45 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hammerMain_geo" -p "hammer_grp1";
	rename -uid "4DA7A525-41E5-F71D-5F1C-96983966EF16";
	setAttr ".rp" -type "double3" 0 30.269825861221015 0 ;
	setAttr ".sp" -type "double3" 0 30.269825861221015 0 ;
createNode mesh -n "hammerMain_geoShape" -p "hammerMain_geo";
	rename -uid "6A54F243-487C-A6E4-EDD7-0B81624C42F6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.56277663 0.79349083
		 0.50456572 0.53044498 0.67050511 0.53420025 0.67054147 0.79592961 0.60140157 0.53263819
		 0.65961248 0.26959234 0.76737732 0.26715356 0.7673409 0.52888292 0.66765767 2.9697549e-07
		 0.831774 9.8628225e-06 0.83113915 0.26173848 0.66826206 0.26172897 0.50008744 1.0947697e-06
		 0.66296446 2.9907096e-07 0.66358548 0.26940936 0.49946913 0.26941016 0.42301977 0.93303645
		 0.42301977 0.76892012 0.53081226 0.76892012 0.5308122 0.93303645 0.7695902 0.26173848
		 0.93246722 0.26173845 0.93246722 0.42772028 0.7695902 0.42772028;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3.44645095 33.21423721 5.49489021 3.44645095 33.21423721 5.49489021
		 -3.44645095 37.74153137 5.49489021 3.44645095 37.74153137 5.49489021 -3.42042589 37.49129868 -5.49489021
		 3.42042589 37.49129868 -5.49489021 -3.42042589 30.52004623 -5.49489021 3.42042589 30.52004623 -5.49489021;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 16 17 18 19
		f 4 1 7 -3 -7
		mu 0 4 8 9 10 11
		f 4 2 9 -4 -9
		mu 0 4 20 21 22 23
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 0 1 2 3
		f 4 10 4 6 8
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hammerBack_geo" -p "hammer_grp1";
	rename -uid "E68D06E7-43CF-1252-35FA-469A104DD54B";
	setAttr ".rp" -type "double3" -1.804382259036222 35.487097336930205 7.9480039380007934 ;
	setAttr ".sp" -type "double3" -1.804382259036222 35.487097336930205 7.9480039380007934 ;
createNode mesh -n "hammerBack_geoShape" -p "hammerBack_geo";
	rename -uid "775BDB99-4262-C8EA-4D13-E889B677AC2F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6:9]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.45748448226368055 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.87175751 0.55802029
		 0.8205564 0.42772028 0.92636663 0.4277409 0.91191536 0.5580281 0.86423862 0.65335298
		 0.85613132 0.65335137 0.31599066 0.91879427 0.36720702 0.78850025 0.40736488 0.78849709
		 0.42180085 0.91878605 0.35159203 0.69316733 0.35969931 0.69316667 0.84877855 0.10615115
		 0.9003756 0.10614137 0.91335738 0.23658323 0.8358463 0.23659793 0.85843194 6.4140186e-06
		 0.89068198 2.9802322e-07 0.89700574 1.0466203e-05 0.97451687 2.9057264e-07 0.96157813
		 0.13939984 0.90998101 0.13940661 0.95191729 0.23551878 0.91966718 0.23552305 0.97855175
		 0.032250345 0.97855175 2.9802322e-07 0.98665905 2.9802322e-07 0.98665905 0.032250345
		 0.70843071 0.88187367 0.78594178 0.88187367 0.78594178 0.98768389 0.70843071 0.98768389;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -2.88792324 35.41659927 10.67053795 -0.72084117 35.41659927 10.67053795
		 -2.88792324 37.10323334 10.67053795 -0.72084117 37.10323334 10.67053795 -3.43211937 37.7091217 5.22546959
		 -0.17664492 37.7091217 5.22546959 -3.43211937 33.26508331 5.22546959 -0.17664492 33.26508331 5.22546959
		 -2.48163509 34.76107788 14.6539135 -1.12712932 34.76107788 14.6539135 -1.12712932 35.10158539 14.6539135
		 -2.48163509 35.10158539 14.6539135;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 0 6 7 0 0 2 1 1 3 1 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 0 8 0 1 9 0 8 9 0 3 10 0 9 10 0 2 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 14 16 -19 -20
		mu 0 4 24 25 26 27
		f 4 1 7 -3 -7
		mu 0 4 12 13 14 15
		f 4 2 9 -4 -9
		mu 0 4 28 29 30 31
		f 4 3 11 -1 -11
		mu 0 4 18 19 20 21
		f 4 -12 -10 -8 -6
		mu 0 4 0 1 2 3
		f 4 10 4 6 8
		mu 0 4 6 7 8 9
		f 4 0 13 -15 -13
		mu 0 4 21 20 22 23
		f 4 5 15 -17 -14
		mu 0 4 0 3 4 5
		f 4 -2 17 18 -16
		mu 0 4 13 12 16 17
		f 4 -5 12 19 -18
		mu 0 4 8 7 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "hammerBack_geo1" -p "hammer_grp1";
	rename -uid "50F60309-4C72-5D65-5D2D-E79E57BFD7C7";
	setAttr ".rp" -type "double3" 1.8078937880114276 35.487097336930205 7.9480039380007934 ;
	setAttr ".sp" -type "double3" 1.8078937880114276 35.487097336930205 7.9480039380007934 ;
createNode mesh -n "hammerBack_geoShape1" -p "hammerBack_geo1";
	rename -uid "A599B73A-4DED-4627-D637-6DA28ED5449F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6:9]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.49991535994922742 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.58124995 0.39971006
		 0.53004885 0.26941001 0.63585913 0.26943064 0.62140787 0.39971787 0.57373112 0.49504268
		 0.56562382 0.4950411 0.82565302 0.88311905 0.87686944 0.75282502 0.91702735 0.75282186
		 0.9314633 0.88311082 0.86125451 0.6574921 0.86936182 0.65749145 0.91503465 0.59069294
		 0.96663171 0.59068316 0.97961348 0.72112501 0.90210241 0.72113973 0.92468804 0.48454821
		 0.95693803 0.48454207 0.92248893 0.72113651 1 0.72112632 0.98706126 0.86052591 0.9354642
		 0.86053264 0.97740042 0.95664483 0.94515032 0.95664907 0.8358463 0.032250404 0.8358463
		 2.9802322e-07 0.84395361 2.9802322e-07 0.84395361 0.032250345 0.6268847 0.86598939
		 0.70439583 0.86598933 0.70439589 0.97179961 0.62688476 0.97179967;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.72435272 35.41659546 10.67053795 2.89143467 35.41659546 10.67053795
		 0.72435272 37.10323334 10.67053795 2.89143467 37.10323334 10.67053795 0.18015653 37.7091217 5.22546959
		 3.43563104 37.7091217 5.22546959 0.18015653 33.2650795 5.22546959 3.43563104 33.2650795 5.22546959
		 1.13064086 34.76107788 14.6539135 2.48514652 34.76107788 14.6539135 2.48514652 35.10158539 14.6539135
		 1.13064086 35.10158539 14.6539135;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 0 6 7 0 0 2 1 1 3 1 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 0 8 0 1 9 0 8 9 0 3 10 0 9 10 0 2 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 14 16 -19 -20
		mu 0 4 24 25 26 27
		f 4 1 7 -3 -7
		mu 0 4 12 13 14 15
		f 4 2 9 -4 -9
		mu 0 4 28 29 30 31
		f 4 3 11 -1 -11
		mu 0 4 18 19 20 21
		f 4 -12 -10 -8 -6
		mu 0 4 0 1 2 3
		f 4 10 4 6 8
		mu 0 4 6 7 8 9
		f 4 0 13 -15 -13
		mu 0 4 21 20 22 23
		f 4 5 15 -17 -14
		mu 0 4 0 3 4 5
		f 4 -2 17 18 -16
		mu 0 4 13 12 16 17
		f 4 -5 12 19 -18
		mu 0 4 8 7 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "hammerHead_geo" -p "hammer_grp1";
	rename -uid "EF3B7CA5-49AA-6124-1A8F-D59293C85092";
	setAttr ".rp" -type "double3" 0 33.975657299526574 -5.4570107623578954 ;
	setAttr ".sp" -type "double3" 0 33.975657299526574 -5.4570107623578954 ;
createNode mesh -n "hammerHead_geoShape" -p "hammerHead_geo";
	rename -uid "A130BF50-4D04-33C7-6E9C-AF84485A1055";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:95]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.49991535994922742 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.55853462 0.38500518
		 0.55853695 0.40384138 0.50457269 0.40384799 0.50457036 0.38501179 0.55853921 0.42267749
		 0.50457501 0.42268407 0.5585323 0.36616898 0.50456804 0.36617556 0.55854154 0.44151369
		 0.50457734 0.4415203 0.55852997 0.34733281 0.50456572 0.34733942 0.55854386 0.46034983
		 0.50457966 0.46035641 0.1631012 0.56457424 0.16309889 0.54573816 0.21706311 0.54573154
		 0.21706542 0.56456763 0.16309658 0.52690202 0.2170608 0.5268954 0.16310351 0.58341044
		 0.21706773 0.58340383 0.16309427 0.50806588 0.21705849 0.5080592 0.16310583 0.60224658
		 0.21707006 0.60223997 0.16309196 0.48922965 0.21705617 0.48922303 0.99613416 0.30557883
		 0.99615645 0.34062231 0.93784571 0.34065947 0.93782341 0.30561596 0.99617881 0.37566572
		 0.937868 0.37570286 0.99611187 0.27053535 0.93780106 0.27057248 0.9962011 0.41070914
		 0.93789029 0.41074625 0.99608952 0.23549195 0.93777877 0.23552907 0.99622339 0.4457525
		 0.93791264 0.44578964 0.051055491 0.90991193 0.051033139 0.87486857 0.10934395 0.87483144
		 0.10936624 0.90987486 0.051010847 0.83982515 0.10932159 0.83978802 0.051077783 0.94495535
		 0.10938859 0.94491822 0.050988555 0.80478168 0.1092993 0.80474454 0.051100135 0.97999871
		 0.10941088 0.97996157 0.050966263 0.76973826 0.10927707 0.76970112 0.21095753 0.44000918
		 0.19212137 0.44000784 0.19212528 0.38604361 0.21096145 0.38604495 0.1732852 0.44000649
		 0.17328911 0.38604224 0.95816916 0.17295963 0.9770053 0.172961 0.97700143 0.22692519
		 0.95816529 0.22692382 0.9958415 0.17296231 0.99583763 0.22692657 0.22140275 0.6022442
		 0.22140433 0.63728768 0.16309352 0.63729024 0.16309196 0.60224682 0.22140589 0.67233109
		 0.1630951 0.67233372 0.76959324 0.52385163 0.76959175 0.48880813 0.82790256 0.48880556
		 0.82790411 0.52384901 0.7695902 0.45376468 0.82790101 0.45376208 0.62984127 0.83218038
		 0.62984127 0.85101658 0.58249336 0.84159845 0.62263304 0.86841887 0.62263304 0.81477797
		 0.60931385 0.88173801 0.60931385 0.80145884 0.59191149 0.88894635 0.59191149 0.79425049
		 0.57307535 0.88894629 0.57307535 0.79425049 0.55567294 0.88173807 0.55567294 0.80145878
		 0.54235381 0.86841881 0.54235375 0.81477803 0.53514546 0.85101652 0.53514552 0.83218032
		 0.80127406 0.55709964 0.82135296 0.57717854 0.76084185 0.61761081 0.81073952 0.5429337
		 0.83551902 0.56771314 0.83221966 0.60341287 0.77503979 0.54623306 0.77836365 0.52952313
		 0.84892952 0.60008901 0.83221966 0.6318087 0.74664408 0.54623306 0.74332017 0.52952313
		 0.84892958 0.63513249 0.82135308 0.65804303 0.72040975 0.5570997 0.71094435 0.5429337
		 0.83551902 0.66750842 0.80127418 0.67812192 0.70033085 0.5771786 0.68616498 0.5677132
		 0.81073964 0.69228792 0.77503991 0.68898857 0.68946415 0.60341287 0.67275435 0.60008907
		 0.77836365 0.70569843 0.7466439 0.68898851 0.68946427 0.63180876 0.67275441 0.63513255
		 0.74332017 0.70569843 0.72040969 0.67812192 0.70033079 0.65804309 0.68616486 0.66750848
		 0.71094418 0.69228792 0.80098158 0.76696575 0.78766239 0.75364649 0.81073964 0.719109
		 0.83551908 0.7438885 0.77026004 0.74643821 0.7783637 0.70569849 0.80818987 0.78436804
		 0.84892958 0.77626437 0.7514239 0.74643821 0.74332023 0.70569843 0.80818987 0.80320412
		 0.84892958 0.81130779 0.73402154 0.75364649 0.71094435 0.719109 0.80098158 0.82060647
		 0.83551908 0.84368366 0.72070235 0.76696563 0.68616486 0.74388844 0.78766239 0.83392566
		 0.81073958 0.86846304 0.71349406 0.78436804 0.67275435 0.77626437 0.7702601 0.84113401
		 0.7783637 0.88187367 0.71349406 0.80320418 0.67275435 0.81130791 0.7514239 0.84113401
		 0.74332023 0.88187361 0.72070235 0.82060659 0.68616486 0.84368378 0.73402154 0.83392572
		 0.71094435 0.86846316;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".vt[0:81]"  1.8732363 33.19974136 -5.45701027 1.43371356 32.54194641 -5.45701027
		 0.77592069 32.10242081 -5.45701027 1.0272499e-06 31.94808197 -5.45701027 -0.77591878 32.10242081 -5.45701027
		 -1.43371224 32.5419426 -5.45701027 -1.8732357 33.19973755 -5.45701027 -2.027576208 33.97565842 -5.45701027
		 -1.87323606 34.75157547 -5.45701027 -1.43371296 35.40937042 -5.45701027 -0.77592021 35.84889221 -5.45701027
		 -3.0213235e-07 36.0032348633 -5.45701027 0.77591956 35.84889221 -5.45701027 1.4337126 35.40937042 -5.45701027
		 1.87323594 34.75157547 -5.45701027 2.027576208 33.97565842 -5.45701027 1.8732363 33.19974136 -7.72351313
		 1.43371356 32.54194641 -7.72351313 0.77592069 32.10242081 -7.72351313 1.0272499e-06 31.94808197 -7.72351313
		 -0.77591878 32.10242081 -7.72351313 -1.43371224 32.5419426 -7.72351313 -1.8732357 33.19973755 -7.72351313
		 -2.027576208 33.97565842 -7.72351313 -1.87323606 34.75157547 -7.72351313 -1.43371296 35.40937042 -7.72351313
		 -0.77592021 35.84889221 -7.72351313 -3.0213235e-07 36.0032348633 -7.72351313 0.77591956 35.84889221 -7.72351313
		 1.4337126 35.40937042 -7.72351313 1.87323594 34.75157547 -7.72351313 2.027576208 33.97565842 -7.72351313
		 0 33.97565842 -5.45701027 2.82393432 32.80595016 -10.17257214 2.16134644 31.8143158 -10.17257214
		 0 33.97565842 -10.17257214 1.16971314 31.15172386 -10.17257214 1.5485962e-06 30.91905403 -10.17257214
		 -1.16971016 31.15172195 -10.17257214 -2.16134429 31.81431007 -10.17257214 -2.82393336 32.80594254 -10.17257214
		 -3.056603909 33.97565842 -10.17257214 -2.82393384 35.14536667 -10.17257214 -2.16134596 36.13700104 -10.17257214
		 -1.16971219 36.79958725 -10.17257214 -4.5546949e-07 37.032260895 -10.17257214 1.16971123 36.79958725 -10.17257214
		 2.16134501 36.13700104 -10.17257214 2.8239336 35.14536667 -10.17257214 3.056603909 33.97565842 -10.17257214
		 3.4850328 32.53211212 -7.72351313 2.66732931 31.30833054 -7.72351313 2.66732931 31.30833054 -10.17257214
		 3.4850328 32.53211212 -10.17257214 1.44354916 30.49062729 -7.72351313 1.44354916 30.49062729 -10.17257214
		 1.9111308e-06 30.20348549 -7.72351313 1.9111308e-06 30.20348549 -10.17257214 -1.4435457 30.49062538 -7.72351313
		 -1.4435457 30.49062538 -10.17257214 -2.66732669 31.30832672 -7.72351313 -2.66732669 31.30832672 -10.17257214
		 -3.48503137 32.53210831 -7.72351313 -3.48503137 32.53210831 -10.17257214 -3.77217126 33.97565842 -7.72351313
		 -3.77217126 33.97565842 -10.17257214 -3.48503208 35.41920471 -7.72351313 -3.48503208 35.41920471 -10.17257214
		 -2.6673286 36.64298248 -7.72351313 -2.6673286 36.64298248 -10.17257214 -1.44354796 37.46068192 -7.72351313
		 -1.44354796 37.46068192 -10.17257214 -5.6209728e-07 37.74782562 -7.72351313 -5.6209728e-07 37.74782562 -10.17257214
		 1.44354689 37.46068192 -7.72351313 1.44354689 37.46068192 -10.17257214 2.66732717 36.64298248 -7.72351313
		 2.66732717 36.64298248 -10.17257214 3.4850316 35.41920471 -7.72351313 3.4850316 35.41920471 -10.17257214
		 3.77217126 33.97565842 -7.72351313 3.77217126 33.97565842 -10.17257214;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1 9 25 1 10 26 1
		 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1 32 4 1 32 5 1
		 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1 32 15 1 33 34 1
		 34 35 1 33 35 1 34 36 1 36 35 1 36 37 1 37 35 1 37 38 1 38 35 1 38 39 1 39 35 1 39 40 1
		 40 35 1 40 41 1 41 35 1 41 42 1 42 35 1 42 43 1 43 35 1 43 44 1 44 35 1 44 45 1 45 35 1
		 45 46 1 46 35 1 46 47 1 47 35 1 47 48 1 48 35 1 48 49 1 49 35 1 49 33 1 16 50 1 17 51 1
		 50 51 0 34 52 1 51 52 1 33 53 1 53 52 0 50 53 1 18 54 1 51 54 0 36 55 1 54 55 1 52 55 0
		 19 56 1 54 56 0 37 57 1 56 57 1 55 57 0 20 58 1 56 58 0 38 59 1 58 59 1 57 59 0 21 60 1
		 58 60 0 39 61 1 60 61 1 59 61 0 22 62 1 60 62 0 40 63 1 62 63 1 61 63 0 23 64 1 62 64 0
		 41 65 1 64 65 1 63 65 0 24 66 1 64 66 0 42 67 1 66 67 1 65 67 0 25 68 1 66 68 0 43 69 1
		 68 69 1 67 69 0 26 70 1 68 70 0 44 71 1 70 71 1 69 71 0 27 72 1 70 72 0 45 73 1 72 73 1
		 71 73 0 28 74 1 72 74 0 46 75 1 74 75 1 73 75 0 29 76 1 74 76 0 47 77 1 76 77 1 75 77 0
		 30 78 1 76 78 0;
	setAttr ".ed[166:175]" 48 79 1 78 79 1 77 79 0 31 80 1 78 80 0 49 81 1 80 81 1
		 79 81 0 80 50 0 81 53 0;
	setAttr -s 96 -ch 352 ".fc[0:95]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 18 22 23 19
		f 4 1 34 -18 -34
		mu 0 4 22 26 27 23
		f 4 2 35 -19 -35
		mu 0 4 56 57 58 59
		f 4 3 36 -20 -36
		mu 0 4 57 60 61 58
		f 4 4 37 -21 -37
		mu 0 4 10 6 7 11
		f 4 5 38 -22 -38
		mu 0 4 6 0 3 7
		f 4 6 39 -23 -39
		mu 0 4 0 1 2 3
		f 4 7 40 -24 -40
		mu 0 4 1 4 5 2
		f 4 8 41 -25 -41
		mu 0 4 4 8 9 5
		f 4 9 42 -26 -42
		mu 0 4 8 12 13 9
		f 4 10 43 -27 -43
		mu 0 4 62 63 64 65
		f 4 11 44 -28 -44
		mu 0 4 63 66 67 64
		f 4 12 45 -29 -45
		mu 0 4 24 20 21 25
		f 4 13 46 -30 -46
		mu 0 4 20 14 17 21
		f 4 14 47 -31 -47
		mu 0 4 14 15 16 17
		f 4 15 32 -32 -48
		mu 0 4 15 18 19 16
		f 3 -1 -49 49
		mu 0 3 80 81 82
		f 3 -2 -50 50
		mu 0 3 84 80 82
		f 3 -3 -51 51
		mu 0 3 86 84 82
		f 3 -4 -52 52
		mu 0 3 88 86 82
		f 3 -5 -53 53
		mu 0 3 90 88 82
		f 3 -6 -54 54
		mu 0 3 92 90 82
		f 3 -7 -55 55
		mu 0 3 94 92 82
		f 3 -8 -56 56
		mu 0 3 96 94 82
		f 3 -9 -57 57
		mu 0 3 95 96 82
		f 3 -10 -58 58
		mu 0 3 93 95 82
		f 3 -11 -59 59
		mu 0 3 91 93 82
		f 3 -12 -60 60
		mu 0 3 89 91 82
		f 3 -13 -61 61
		mu 0 3 87 89 82
		f 3 -14 -62 62
		mu 0 3 85 87 82
		f 3 -15 -63 63
		mu 0 3 83 85 82
		f 3 -16 -64 48
		mu 0 3 81 83 82
		f 3 64 65 -67
		mu 0 3 97 98 99
		f 3 67 68 -66
		mu 0 3 98 102 99
		f 3 69 70 -69
		mu 0 3 102 106 99
		f 3 71 72 -71
		mu 0 3 106 110 99
		f 3 73 74 -73
		mu 0 3 110 114 99
		f 3 75 76 -75
		mu 0 3 114 118 99
		f 3 77 78 -77
		mu 0 3 118 122 99
		f 3 79 80 -79
		mu 0 3 122 126 99
		f 3 81 82 -81
		mu 0 3 126 127 99
		f 3 83 84 -83
		mu 0 3 127 123 99
		f 3 85 86 -85
		mu 0 3 123 119 99
		f 3 87 88 -87
		mu 0 3 119 115 99
		f 3 89 90 -89
		mu 0 3 115 111 99
		f 3 91 92 -91
		mu 0 3 111 107 99
		f 3 93 94 -93
		mu 0 3 107 103 99
		f 3 95 66 -95
		mu 0 3 103 97 99
		f 4 98 100 -103 -104
		mu 0 4 46 50 51 47
		f 4 105 107 -109 -101
		mu 0 4 50 54 55 51
		f 4 110 112 -114 -108
		mu 0 4 68 69 70 71
		f 4 115 117 -119 -113
		mu 0 4 69 72 73 70
		f 4 120 122 -124 -118
		mu 0 4 38 34 35 39
		f 4 125 127 -129 -123
		mu 0 4 34 28 31 35
		f 4 130 132 -134 -128
		mu 0 4 28 29 30 31
		f 4 135 137 -139 -133
		mu 0 4 29 32 33 30
		f 4 140 142 -144 -138
		mu 0 4 32 36 37 33
		f 4 145 147 -149 -143
		mu 0 4 36 40 41 37
		f 4 150 152 -154 -148
		mu 0 4 74 75 76 77
		f 4 155 157 -159 -153
		mu 0 4 75 78 79 76
		f 4 160 162 -164 -158
		mu 0 4 52 48 49 53
		f 4 165 167 -169 -163
		mu 0 4 48 42 45 49
		f 4 170 172 -174 -168
		mu 0 4 42 43 44 45
		f 4 174 103 -176 -173
		mu 0 4 43 46 47 44
		f 4 16 97 -99 -97
		mu 0 4 130 131 132 133
		f 4 -65 101 102 -100
		mu 0 4 98 97 100 101
		f 4 17 104 -106 -98
		mu 0 4 131 134 135 132
		f 4 -68 99 108 -107
		mu 0 4 102 98 101 105
		f 4 18 109 -111 -105
		mu 0 4 134 138 139 135
		f 4 -70 106 113 -112
		mu 0 4 106 102 105 109
		f 4 19 114 -116 -110
		mu 0 4 138 142 143 139
		f 4 -72 111 118 -117
		mu 0 4 110 106 109 113
		f 4 20 119 -121 -115
		mu 0 4 142 146 147 143
		f 4 -74 116 123 -122
		mu 0 4 114 110 113 117
		f 4 21 124 -126 -120
		mu 0 4 146 150 151 147
		f 4 -76 121 128 -127
		mu 0 4 118 114 117 121
		f 4 22 129 -131 -125
		mu 0 4 150 154 155 151
		f 4 -78 126 133 -132
		mu 0 4 122 118 121 125
		f 4 23 134 -136 -130
		mu 0 4 154 158 159 155
		f 4 -80 131 138 -137
		mu 0 4 126 122 125 129
		f 4 24 139 -141 -135
		mu 0 4 158 160 161 159
		f 4 -82 136 143 -142
		mu 0 4 127 126 129 128
		f 4 25 144 -146 -140
		mu 0 4 160 156 157 161
		f 4 -84 141 148 -147
		mu 0 4 123 127 128 124
		f 4 26 149 -151 -145
		mu 0 4 156 152 153 157
		f 4 -86 146 153 -152
		mu 0 4 119 123 124 120
		f 4 27 154 -156 -150
		mu 0 4 152 148 149 153
		f 4 -88 151 158 -157
		mu 0 4 115 119 120 116
		f 4 28 159 -161 -155
		mu 0 4 148 144 145 149
		f 4 -90 156 163 -162
		mu 0 4 111 115 116 112
		f 4 29 164 -166 -160
		mu 0 4 144 140 141 145
		f 4 -92 161 168 -167
		mu 0 4 107 111 112 108
		f 4 30 169 -171 -165
		mu 0 4 140 136 137 141
		f 4 -94 166 173 -172
		mu 0 4 103 107 108 104
		f 4 31 96 -175 -170
		mu 0 4 136 130 133 137
		f 4 -96 171 175 -102
		mu 0 4 97 103 104 100;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hammer_grp";
	rename -uid "DB3258EF-46E9-BD0B-12C9-63B34D7C852F";
createNode transform -n "hammer_geo" -p "hammer_grp";
	rename -uid "A36F17A3-4F12-146E-EE90-009A396036EE";
	setAttr ".rp" -type "double3" 0 18.873912811279297 2.2406706809997559 ;
	setAttr ".sp" -type "double3" 0 18.873912811279297 2.2406706809997559 ;
createNode mesh -n "hammer_geoShape" -p "hammer_geo";
	rename -uid "7F45EBDC-4981-A7E2-E8F2-10BA21EF0F56";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:169]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[50]" "f[56]" "f[66]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[16:31]" "f[51]" "f[57]" "f[67]" "f[90:105]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "e[0:15]" "e[132:147]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "vtx[0:15]" "vtx[32]" "vtx[66:81]" "vtx[98]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[66:81]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[0:31]" "vtx[66:97]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 3 "vtx[16:31]" "vtx[33]" "vtx[82:97]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[82:97]";
	setAttr ".gtag[8].gtagnm" -type "string" "front";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[48]" "f[54]" "f[60:64]" "f[70:73]";
	setAttr ".gtag[9].gtagnm" -type "string" "left";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 3 "f[53]" "f[59]" "f[69]";
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 3 "f[52]" "f[58]" "f[68]";
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 2 "f[0:15]" "f[74:89]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 5 "f[32:47]" "f[49]" "f[55]" "f[65]" "f[106:169]";
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 2 "e[16:31]" "e[148:163]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 324 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.063042879 0.00027675927 0.094584197
		 1.4156103e-07 0.09449327 0.76876044 0.076616317 0.7689172 0.1261254 0.00028422102
		 0.11237016 0.76892143 0.031511545 0.0011139512 0.058744967 0.76939178 0.15765658
		 0.0011288524 0.13024139 0.76940012 0 0.0025114529 0.040884912 0.7701838 0.18916777
		 0.0025338344 0.1481013 0.77019644 0.25671461 0.00027675927 0.28825587 1.4156103e-07
		 0.28816494 0.76876044 0.27028802 0.7689172 0.31979704 0.00028419495 0.30604184 0.76892143
		 0.22518322 0.0011139475 0.25241667 0.76939172 0.35132822 0.0011288524 0.32391307
		 0.76940012 0.1936717 0.0025114529 0.23455657 0.7701838 0.38283938 0.0025338307 0.34177294
		 0.77019644 0.25862968 0.88499165 0.2363258 0.90729547 0.19141313 0.84007889 0.20718437
		 0.9193663 0.27070051 0.85585016 0.17564186 0.91936624 0.27070051 0.82430768 0.14650044
		 0.90729547 0.25862974 0.79516625 0.12419653 0.88499165 0.23632586 0.77286232 0.11212572
		 0.85585022 0.20718443 0.76079154 0.11212572 0.82430762 0.17564189 0.76079148 0.12419653
		 0.79516619 0.14650044 0.77286232 0.929075 0.95350873 0.91643363 0.96615016 0.89097798
		 0.92805314 0.89991689 0.97299159 0.93591648 0.93699193 0.88203925 0.97299159 0.93591648
		 0.91911435 0.86552244 0.96615016 0.929075 0.90259755 0.85288101 0.95350873 0.91643363
		 0.88995618 0.84603953 0.93699199 0.89991683 0.8831147 0.84603953 0.91911435 0.88203919
		 0.8831147 0.85288101 0.90259755 0.86552238 0.88995618 0.50648874 0.76863784 0.47494751
		 0.76892042 0.474893 0.00016017724 0.49276993 3.1199306e-08 0.44340625 0.76864237
		 0.45701608 2.5671907e-06 0.38734341 0.00028257072 0.41888463 0 0.41893908 0.76876044
		 0.40106219 0.7689206 0.45042589 0.00027809991 0.43681601 0.7689181 0.42301977 0.93303645
		 0.42301977 0.76892012 0.53081226 0.76892012 0.5308122 0.93303645 0.66765767 2.9697549e-07
		 0.831774 9.8628225e-06 0.83113915 0.26173848 0.66826206 0.26172897 0.7695902 0.26173848
		 0.93246722 0.26173845 0.93246722 0.42772028 0.7695902 0.42772028 0.50008744 1.0947697e-06
		 0.66296446 2.9907096e-07 0.66358548 0.26940936 0.49946913 0.26941016 0.56277663 0.79349083
		 0.50456572 0.53044498 0.67050511 0.53420025 0.67054147 0.79592961 0.60140157 0.53263819
		 0.65961248 0.26959234 0.76737732 0.26715356 0.7673409 0.52888292 0.97855175 0.032250345
		 0.97855175 2.9802322e-07 0.98665905 2.9802322e-07 0.98665905 0.032250345 0.84877855
		 0.10615115 0.9003756 0.10614137 0.91335738 0.23658323 0.8358463 0.23659793 0.70843071
		 0.88187367 0.78594178 0.88187367 0.78594178 0.98768389 0.70843071 0.98768389 0.89700574
		 1.0466203e-05 0.97451687 2.9057264e-07 0.96157813 0.13939984 0.90998101 0.13940661
		 0.87175751 0.55802029 0.8205564 0.42772028 0.92636663 0.4277409 0.91191536 0.5580281
		 0.31599066 0.91879427 0.36720702 0.78850025 0.40736488 0.78849709 0.42180085 0.91878605
		 0.95191729 0.23551878 0.91966718 0.23552305 0.86423862 0.65335298 0.85613132 0.65335137
		 0.85843194 6.4140186e-06 0.89068198 2.9802322e-07 0.35159203 0.69316733 0.35969931
		 0.69316667 0.8358463 0.032250404 0.8358463 2.9802322e-07 0.84395361 2.9802322e-07
		 0.84395361 0.032250345 0.91503465 0.59069294 0.96663171 0.59068316 0.97961348 0.72112501
		 0.90210241 0.72113973 0.6268847 0.86598939 0.70439583 0.86598933 0.70439589 0.97179961
		 0.62688476 0.97179967 0.92248893 0.72113651 1 0.72112632 0.98706126 0.86052591 0.9354642
		 0.86053264 0.58124995 0.39971006 0.53004885 0.26941001 0.63585913 0.26943064 0.62140787
		 0.39971787 0.82565302 0.88311905 0.87686944 0.75282502 0.91702735 0.75282186 0.9314633
		 0.88311082 0.97740042 0.95664483 0.94515032 0.95664907 0.57373112 0.49504268 0.56562382
		 0.4950411 0.92468804 0.48454821 0.95693803 0.48454207 0.86125451 0.6574921 0.86936182
		 0.65749145 0.16309658 0.52690202 0.16309427 0.50806588 0.21705849 0.5080592 0.2170608
		 0.5268954 0.16309196 0.48922965 0.21705617 0.48922303 0.21095753 0.44000918 0.19212137
		 0.44000784 0.19212528 0.38604361 0.21096145 0.38604495 0.1732852 0.44000649 0.17328911
		 0.38604224 0.55852997 0.34733281 0.5585323 0.36616898 0.50456804 0.36617556 0.50456572
		 0.34733942 0.55853462 0.38500518 0.50457036 0.38501179 0.55853695 0.40384138 0.50457269
		 0.40384799 0.55853921 0.42267749 0.50457501 0.42268407 0.55854154 0.44151369 0.50457734
		 0.4415203 0.55854386 0.46034983 0.50457966 0.46035641 0.95816916 0.17295963 0.9770053
		 0.172961 0.97700143 0.22692519 0.95816529 0.22692382 0.9958415 0.17296231 0.99583763
		 0.22692657 0.16310583 0.60224658 0.16310351 0.58341044 0.21706773 0.58340383 0.21707006
		 0.60223997 0.1631012 0.56457424 0.21706542 0.56456763 0.16309889 0.54573816 0.21706311
		 0.54573154 0.62984127 0.83218038 0.62984127 0.85101658 0.58249336 0.84159845 0.62263304
		 0.81477797 0.60931385 0.80145884 0.59191149 0.79425049 0.57307535 0.79425049 0.55567294
		 0.80145878 0.54235375 0.81477803 0.53514552 0.83218032 0.53514546 0.85101652 0.54235381
		 0.86841881 0.55567294 0.88173807 0.57307535 0.88894629 0.59191149 0.88894635 0.60931385
		 0.88173801 0.62263304 0.86841887 0.80127406 0.55709964 0.82135296 0.57717854 0.76084185
		 0.61761081 0.83221966 0.60341287 0.83221966 0.6318087 0.82135308 0.65804303 0.80127418
		 0.67812192 0.77503991 0.68898857 0.7466439 0.68898851 0.72040969 0.67812192 0.70033079
		 0.65804309 0.68946427 0.63180876 0.68946415 0.60341287 0.70033085 0.5771786 0.72040975
		 0.5570997 0.74664408 0.54623306 0.77503979 0.54623306 0.051010847 0.83982515 0.050988555
		 0.80478168 0.1092993 0.80474454 0.10932159 0.83978802 0.050966263 0.76973826 0.10927707
		 0.76970112 0.22140275 0.6022442 0.22140433 0.63728768 0.16309352 0.63729024 0.16309196
		 0.60224682 0.22140589 0.67233109 0.1630951 0.67233372 0.99608952 0.23549195 0.99611187
		 0.27053535;
	setAttr ".uvst[0].uvsp[250:323]" 0.93780106 0.27057248 0.93777877 0.23552907
		 0.99613416 0.30557883 0.93782341 0.30561596 0.99615645 0.34062231 0.93784571 0.34065947
		 0.99617881 0.37566572 0.937868 0.37570286 0.9962011 0.41070914 0.93789029 0.41074625
		 0.99622339 0.4457525 0.93791264 0.44578964 0.76959324 0.52385163 0.76959175 0.48880813
		 0.82790256 0.48880556 0.82790411 0.52384901 0.7695902 0.45376468 0.82790101 0.45376208
		 0.051100135 0.97999871 0.051077783 0.94495535 0.10938859 0.94491822 0.10941088 0.97996157
		 0.051055491 0.90991193 0.10936624 0.90987486 0.051033139 0.87486857 0.10934395 0.87483144
		 0.80098158 0.76696575 0.78766239 0.75364649 0.81073964 0.719109 0.83551908 0.7438885
		 0.81073952 0.5429337 0.83551902 0.56771314 0.77026004 0.74643821 0.7783637 0.70569849
		 0.84892952 0.60008901 0.7514239 0.74643821 0.74332023 0.70569843 0.84892958 0.63513249
		 0.73402154 0.75364649 0.71094435 0.719109 0.83551902 0.66750842 0.72070235 0.76696563
		 0.68616486 0.74388844 0.81073964 0.69228792 0.71349406 0.78436804 0.67275435 0.77626437
		 0.77836365 0.70569843 0.71349406 0.80320418 0.67275435 0.81130791 0.74332017 0.70569843
		 0.72070235 0.82060659 0.68616486 0.84368378 0.71094418 0.69228792 0.73402154 0.83392572
		 0.71094435 0.86846316 0.68616486 0.66750848 0.7514239 0.84113401 0.74332023 0.88187361
		 0.67275441 0.63513255 0.7702601 0.84113401 0.7783637 0.88187367 0.67275435 0.60008907
		 0.78766239 0.83392566 0.81073958 0.86846304 0.68616498 0.5677132 0.80098158 0.82060647
		 0.83551908 0.84368366 0.71094435 0.5429337 0.80818987 0.80320412 0.84892958 0.81130779
		 0.74332017 0.52952313 0.80818987 0.78436804 0.84892958 0.77626437 0.77836365 0.52952313;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 148 ".vt[0:147]"  3.13686609 0 -1.29933035 2.40085387 0 -2.40085125
		 1.29933381 0 -3.13686466 1.7202026e-06 0 -3.39531827 -1.29933059 0 -3.13686609 -2.40085173 0 -2.40085363
		 -3.1368649 0 -1.29933345 -3.39531851 0 -1.2266993e-06 -3.13686562 0 1.29933107 -2.4008534 0 2.4008522
		 -1.29933274 0 3.13686538 -5.059419e-07 0 3.39531851 1.29933178 0 3.13686562 2.40085268 0 2.40085292
		 3.13686538 0 1.29933214 3.39531851 0 -1.2438679e-08 1.77791142 32.25448608 -0.73643368
		 1.36075461 32.25448608 -1.36075342 0.73643571 32.25448608 -1.77791035 9.7497548e-07 32.25448608 -1.92439663
		 -0.73643398 32.25448608 -1.77791119 -1.36075354 32.25448608 -1.36075449 -1.77791071 32.25448608 -0.73643547
		 -1.92439699 32.25448608 -6.6396467e-07 -1.77791119 32.25448608 0.73643422 -1.36075437 32.25448608 1.36075377
		 -0.736435 32.25448608 1.77791083 -2.8675748e-07 32.25448608 1.92439699 0.73643452 32.25448608 1.77791107
		 1.36075401 32.25448608 1.36075413 1.77791107 32.25448608 0.73643488 1.92439699 32.25448608 2.4253199e-08
		 0 0 0 0 32.25448608 0 -3.44645095 33.21423721 5.49489021 3.44645095 33.21423721 5.49489021
		 -3.44645095 37.74153137 5.49489021 3.44645095 37.74153137 5.49489021 -3.42042589 37.49129868 -5.49489021
		 3.42042589 37.49129868 -5.49489021 -3.42042589 30.52004623 -5.49489021 3.42042589 30.52004623 -5.49489021
		 -2.88792324 35.41659927 10.67053795 -0.72084117 35.41659927 10.67053795 -2.88792324 37.10323334 10.67053795
		 -0.72084117 37.10323334 10.67053795 -3.43211937 37.7091217 5.22546959 -0.17664492 37.7091217 5.22546959
		 -3.43211937 33.26508331 5.22546959 -0.17664492 33.26508331 5.22546959 -2.48163509 34.76107788 14.6539135
		 -1.12712932 34.76107788 14.6539135 -1.12712932 35.10158539 14.6539135 -2.48163509 35.10158539 14.6539135
		 0.72435272 35.41659546 10.67053795 2.89143467 35.41659546 10.67053795 0.72435272 37.10323334 10.67053795
		 2.89143467 37.10323334 10.67053795 0.18015653 37.7091217 5.22546959 3.43563104 37.7091217 5.22546959
		 0.18015653 33.2650795 5.22546959 3.43563104 33.2650795 5.22546959 1.13064086 34.76107788 14.6539135
		 2.48514652 34.76107788 14.6539135 2.48514652 35.10158539 14.6539135 1.13064086 35.10158539 14.6539135
		 1.8732363 33.19974136 -5.45701027 1.43371356 32.54194641 -5.45701027 0.77592069 32.10242081 -5.45701027
		 1.0272499e-06 31.94808197 -5.45701027 -0.77591878 32.10242081 -5.45701027 -1.43371224 32.5419426 -5.45701027
		 -1.8732357 33.19973755 -5.45701027 -2.027576208 33.97565842 -5.45701027 -1.87323606 34.75157547 -5.45701027
		 -1.43371296 35.40937042 -5.45701027 -0.77592021 35.84889221 -5.45701027 -3.0213235e-07 36.0032348633 -5.45701027
		 0.77591956 35.84889221 -5.45701027 1.4337126 35.40937042 -5.45701027 1.87323594 34.75157547 -5.45701027
		 2.027576208 33.97565842 -5.45701027 1.8732363 33.19974136 -7.72351313 1.43371356 32.54194641 -7.72351313
		 0.77592069 32.10242081 -7.72351313 1.0272499e-06 31.94808197 -7.72351313 -0.77591878 32.10242081 -7.72351313
		 -1.43371224 32.5419426 -7.72351313 -1.8732357 33.19973755 -7.72351313 -2.027576208 33.97565842 -7.72351313
		 -1.87323606 34.75157547 -7.72351313 -1.43371296 35.40937042 -7.72351313 -0.77592021 35.84889221 -7.72351313
		 -3.0213235e-07 36.0032348633 -7.72351313 0.77591956 35.84889221 -7.72351313 1.4337126 35.40937042 -7.72351313
		 1.87323594 34.75157547 -7.72351313 2.027576208 33.97565842 -7.72351313 0 33.97565842 -5.45701027
		 2.82393432 32.80595016 -10.17257214 2.16134644 31.8143158 -10.17257214 0 33.97565842 -10.17257214
		 1.16971314 31.15172386 -10.17257214 1.5485962e-06 30.91905403 -10.17257214 -1.16971016 31.15172195 -10.17257214
		 -2.16134429 31.81431007 -10.17257214 -2.82393336 32.80594254 -10.17257214 -3.056603909 33.97565842 -10.17257214
		 -2.82393384 35.14536667 -10.17257214 -2.16134596 36.13700104 -10.17257214 -1.16971219 36.79958725 -10.17257214
		 -4.5546949e-07 37.032260895 -10.17257214 1.16971123 36.79958725 -10.17257214 2.16134501 36.13700104 -10.17257214
		 2.8239336 35.14536667 -10.17257214 3.056603909 33.97565842 -10.17257214 3.4850328 32.53211212 -7.72351313
		 2.66732931 31.30833054 -7.72351313 2.66732931 31.30833054 -10.17257214 3.4850328 32.53211212 -10.17257214
		 1.44354916 30.49062729 -7.72351313 1.44354916 30.49062729 -10.17257214 1.9111308e-06 30.20348549 -7.72351313
		 1.9111308e-06 30.20348549 -10.17257214 -1.4435457 30.49062538 -7.72351313 -1.4435457 30.49062538 -10.17257214
		 -2.66732669 31.30832672 -7.72351313 -2.66732669 31.30832672 -10.17257214 -3.48503137 32.53210831 -7.72351313
		 -3.48503137 32.53210831 -10.17257214 -3.77217126 33.97565842 -7.72351313 -3.77217126 33.97565842 -10.17257214
		 -3.48503208 35.41920471 -7.72351313 -3.48503208 35.41920471 -10.17257214 -2.6673286 36.64298248 -7.72351313
		 -2.6673286 36.64298248 -10.17257214 -1.44354796 37.46068192 -7.72351313 -1.44354796 37.46068192 -10.17257214
		 -5.6209728e-07 37.74782562 -7.72351313 -5.6209728e-07 37.74782562 -10.17257214 1.44354689 37.46068192 -7.72351313
		 1.44354689 37.46068192 -10.17257214 2.66732717 36.64298248 -7.72351313 2.66732717 36.64298248 -10.17257214
		 3.4850316 35.41920471 -7.72351313 3.4850316 35.41920471 -10.17257214 3.77217126 33.97565842 -7.72351313
		 3.77217126 33.97565842 -10.17257214;
	setAttr -s 308 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1 9 25 1 10 26 1
		 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1 32 4 1 32 5 1
		 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1 32 15 1 16 33 1
		 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1 26 33 1 27 33 1
		 28 33 1 29 33 1 30 33 1 31 33 1 34 35 0 36 37 0 38 39 0 40 41 0 34 36 0 35 37 0 36 38 0
		 37 39 0 38 40 0 39 41 0 40 34 0 41 35 0 42 43 0 44 45 1 46 47 0 48 49 0 42 44 1 43 45 1
		 44 46 0 45 47 0 46 48 0 47 49 0 48 42 0 49 43 0 42 50 0 43 51 0 50 51 0 45 52 0 51 52 0
		 44 53 0 53 52 0 50 53 0 54 55 0 56 57 1 58 59 0 60 61 0 54 56 1 55 57 1 56 58 0 57 59 0
		 58 60 0 59 61 0 60 54 0 61 55 0 54 62 0 55 63 0 62 63 0 57 64 0 63 64 0 56 65 0 65 64 0
		 62 65 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0
		 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 66 0 82 83 0 83 84 0 84 85 0 85 86 0 86 87 0
		 87 88 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 82 0
		 66 82 1 67 83 1;
	setAttr ".ed[166:307]" 68 84 1 69 85 1 70 86 1 71 87 1 72 88 1 73 89 1 74 90 1
		 75 91 1 76 92 1 77 93 1 78 94 1 79 95 1 80 96 1 81 97 1 98 66 1 98 67 1 98 68 1 98 69 1
		 98 70 1 98 71 1 98 72 1 98 73 1 98 74 1 98 75 1 98 76 1 98 77 1 98 78 1 98 79 1 98 80 1
		 98 81 1 99 100 1 100 101 1 99 101 1 100 102 1 102 101 1 102 103 1 103 101 1 103 104 1
		 104 101 1 104 105 1 105 101 1 105 106 1 106 101 1 106 107 1 107 101 1 107 108 1 108 101 1
		 108 109 1 109 101 1 109 110 1 110 101 1 110 111 1 111 101 1 111 112 1 112 101 1 112 113 1
		 113 101 1 113 114 1 114 101 1 114 115 1 115 101 1 115 99 1 82 116 1 83 117 1 116 117 0
		 100 118 1 117 118 1 99 119 1 119 118 0 116 119 1 84 120 1 117 120 0 102 121 1 120 121 1
		 118 121 0 85 122 1 120 122 0 103 123 1 122 123 1 121 123 0 86 124 1 122 124 0 104 125 1
		 124 125 1 123 125 0 87 126 1 124 126 0 105 127 1 126 127 1 125 127 0 88 128 1 126 128 0
		 106 129 1 128 129 1 127 129 0 89 130 1 128 130 0 107 131 1 130 131 1 129 131 0 90 132 1
		 130 132 0 108 133 1 132 133 1 131 133 0 91 134 1 132 134 0 109 135 1 134 135 1 133 135 0
		 92 136 1 134 136 0 110 137 1 136 137 1 135 137 0 93 138 1 136 138 0 111 139 1 138 139 1
		 137 139 0 94 140 1 138 140 0 112 141 1 140 141 1 139 141 0 95 142 1 140 142 0 113 143 1
		 142 143 1 141 143 0 96 144 1 142 144 0 114 145 1 144 145 1 143 145 0 97 146 1 144 146 0
		 115 147 1 146 147 1 145 147 0 146 116 0 147 119 0;
	setAttr -s 170 -ch 616 ".fc[0:169]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 18 22 23 19
		f 4 1 34 -18 -34
		mu 0 4 22 26 27 23
		f 4 2 35 -19 -35
		mu 0 4 62 63 64 65
		f 4 3 36 -20 -36
		mu 0 4 63 66 67 64
		f 4 4 37 -21 -37
		mu 0 4 10 6 7 11
		f 4 5 38 -22 -38
		mu 0 4 6 0 3 7
		f 4 6 39 -23 -39
		mu 0 4 0 1 2 3
		f 4 7 40 -24 -40
		mu 0 4 1 4 5 2
		f 4 8 41 -25 -41
		mu 0 4 4 8 9 5
		f 4 9 42 -26 -42
		mu 0 4 8 12 13 9
		f 4 10 43 -27 -43
		mu 0 4 68 69 70 71
		f 4 11 44 -28 -44
		mu 0 4 69 72 73 70
		f 4 12 45 -29 -45
		mu 0 4 24 20 21 25
		f 4 13 46 -30 -46
		mu 0 4 20 14 17 21
		f 4 14 47 -31 -47
		mu 0 4 14 15 16 17
		f 4 15 32 -32 -48
		mu 0 4 15 18 19 16
		f 3 -1 -49 49
		mu 0 3 28 29 30
		f 3 -2 -50 50
		mu 0 3 32 28 30
		f 3 -3 -51 51
		mu 0 3 34 32 30
		f 3 -4 -52 52
		mu 0 3 36 34 30
		f 3 -5 -53 53
		mu 0 3 38 36 30
		f 3 -6 -54 54
		mu 0 3 40 38 30
		f 3 -7 -55 55
		mu 0 3 42 40 30
		f 3 -8 -56 56
		mu 0 3 44 42 30
		f 3 -9 -57 57
		mu 0 3 43 44 30
		f 3 -10 -58 58
		mu 0 3 41 43 30
		f 3 -11 -59 59
		mu 0 3 39 41 30
		f 3 -12 -60 60
		mu 0 3 37 39 30
		f 3 -13 -61 61
		mu 0 3 35 37 30
		f 3 -14 -62 62
		mu 0 3 33 35 30
		f 3 -15 -63 63
		mu 0 3 31 33 30
		f 3 -16 -64 48
		mu 0 3 29 31 30
		f 3 16 65 -65
		mu 0 3 45 46 47
		f 3 17 66 -66
		mu 0 3 46 48 47
		f 3 18 67 -67
		mu 0 3 48 50 47
		f 3 19 68 -68
		mu 0 3 50 52 47
		f 3 20 69 -69
		mu 0 3 52 54 47
		f 3 21 70 -70
		mu 0 3 54 56 47
		f 3 22 71 -71
		mu 0 3 56 58 47
		f 3 23 72 -72
		mu 0 3 58 60 47
		f 3 24 73 -73
		mu 0 3 60 61 47
		f 3 25 74 -74
		mu 0 3 61 59 47
		f 3 26 75 -75
		mu 0 3 59 57 47
		f 3 27 76 -76
		mu 0 3 57 55 47
		f 3 28 77 -77
		mu 0 3 55 53 47
		f 3 29 78 -78
		mu 0 3 53 51 47
		f 3 30 79 -79
		mu 0 3 51 49 47
		f 3 31 64 -80
		mu 0 3 49 45 47
		f 4 80 85 -82 -85
		mu 0 4 74 75 76 77
		f 4 81 87 -83 -87
		mu 0 4 78 79 80 81
		f 4 82 89 -84 -89
		mu 0 4 82 83 84 85
		f 4 83 91 -81 -91
		mu 0 4 86 87 88 89
		f 4 -92 -90 -88 -86
		mu 0 4 90 91 92 93
		f 4 90 84 86 88
		mu 0 4 94 95 96 97
		f 4 106 108 -111 -112
		mu 0 4 98 99 100 101
		f 4 93 99 -95 -99
		mu 0 4 102 103 104 105
		f 4 94 101 -96 -101
		mu 0 4 106 107 108 109
		f 4 95 103 -93 -103
		mu 0 4 110 111 112 113
		f 4 -104 -102 -100 -98
		mu 0 4 114 115 116 117
		f 4 102 96 98 100
		mu 0 4 118 119 120 121
		f 4 92 105 -107 -105
		mu 0 4 113 112 122 123
		f 4 97 107 -109 -106
		mu 0 4 114 117 124 125
		f 4 -94 109 110 -108
		mu 0 4 103 102 126 127
		f 4 -97 104 111 -110
		mu 0 4 120 119 128 129
		f 4 126 128 -131 -132
		mu 0 4 130 131 132 133
		f 4 113 119 -115 -119
		mu 0 4 134 135 136 137
		f 4 114 121 -116 -121
		mu 0 4 138 139 140 141
		f 4 115 123 -113 -123
		mu 0 4 142 143 144 145
		f 4 -124 -122 -120 -118
		mu 0 4 146 147 148 149
		f 4 122 116 118 120
		mu 0 4 150 151 152 153
		f 4 112 125 -127 -125
		mu 0 4 145 144 154 155
		f 4 117 127 -129 -126
		mu 0 4 146 149 156 157
		f 4 -114 129 130 -128
		mu 0 4 135 134 158 159
		f 4 -117 124 131 -130
		mu 0 4 152 151 160 161
		f 4 132 165 -149 -165
		mu 0 4 162 163 164 165
		f 4 133 166 -150 -166
		mu 0 4 163 166 167 164
		f 4 134 167 -151 -167
		mu 0 4 168 169 170 171
		f 4 135 168 -152 -168
		mu 0 4 169 172 173 170
		f 4 136 169 -153 -169
		mu 0 4 174 175 176 177
		f 4 137 170 -154 -170
		mu 0 4 175 178 179 176
		f 4 138 171 -155 -171
		mu 0 4 178 180 181 179
		f 4 139 172 -156 -172
		mu 0 4 180 182 183 181
		f 4 140 173 -157 -173
		mu 0 4 182 184 185 183
		f 4 141 174 -158 -174
		mu 0 4 184 186 187 185
		f 4 142 175 -159 -175
		mu 0 4 188 189 190 191
		f 4 143 176 -160 -176
		mu 0 4 189 192 193 190
		f 4 144 177 -161 -177
		mu 0 4 194 195 196 197
		f 4 145 178 -162 -178
		mu 0 4 195 198 199 196
		f 4 146 179 -163 -179
		mu 0 4 198 200 201 199
		f 4 147 164 -164 -180
		mu 0 4 200 162 165 201
		f 3 -133 -181 181
		mu 0 3 202 203 204
		f 3 -134 -182 182
		mu 0 3 205 202 204
		f 3 -135 -183 183
		mu 0 3 206 205 204
		f 3 -136 -184 184
		mu 0 3 207 206 204
		f 3 -137 -185 185
		mu 0 3 208 207 204
		f 3 -138 -186 186
		mu 0 3 209 208 204
		f 3 -139 -187 187
		mu 0 3 210 209 204
		f 3 -140 -188 188
		mu 0 3 211 210 204
		f 3 -141 -189 189
		mu 0 3 212 211 204
		f 3 -142 -190 190
		mu 0 3 213 212 204
		f 3 -143 -191 191
		mu 0 3 214 213 204
		f 3 -144 -192 192
		mu 0 3 215 214 204
		f 3 -145 -193 193
		mu 0 3 216 215 204
		f 3 -146 -194 194
		mu 0 3 217 216 204
		f 3 -147 -195 195
		mu 0 3 218 217 204
		f 3 -148 -196 180
		mu 0 3 203 218 204
		f 3 196 197 -199
		mu 0 3 219 220 221
		f 3 199 200 -198
		mu 0 3 220 222 221
		f 3 201 202 -201
		mu 0 3 222 223 221
		f 3 203 204 -203
		mu 0 3 223 224 221
		f 3 205 206 -205
		mu 0 3 224 225 221
		f 3 207 208 -207
		mu 0 3 225 226 221
		f 3 209 210 -209
		mu 0 3 226 227 221
		f 3 211 212 -211
		mu 0 3 227 228 221
		f 3 213 214 -213
		mu 0 3 228 229 221
		f 3 215 216 -215
		mu 0 3 229 230 221
		f 3 217 218 -217
		mu 0 3 230 231 221
		f 3 219 220 -219
		mu 0 3 231 232 221
		f 3 221 222 -221
		mu 0 3 232 233 221
		f 3 223 224 -223
		mu 0 3 233 234 221
		f 3 225 226 -225
		mu 0 3 234 235 221
		f 3 227 198 -227
		mu 0 3 235 219 221
		f 4 230 232 -235 -236
		mu 0 4 236 237 238 239
		f 4 237 239 -241 -233
		mu 0 4 237 240 241 238
		f 4 242 244 -246 -240
		mu 0 4 242 243 244 245
		f 4 247 249 -251 -245
		mu 0 4 243 246 247 244
		f 4 252 254 -256 -250
		mu 0 4 248 249 250 251
		f 4 257 259 -261 -255
		mu 0 4 249 252 253 250
		f 4 262 264 -266 -260
		mu 0 4 252 254 255 253
		f 4 267 269 -271 -265
		mu 0 4 254 256 257 255
		f 4 272 274 -276 -270
		mu 0 4 256 258 259 257
		f 4 277 279 -281 -275
		mu 0 4 258 260 261 259
		f 4 282 284 -286 -280
		mu 0 4 262 263 264 265
		f 4 287 289 -291 -285
		mu 0 4 263 266 267 264
		f 4 292 294 -296 -290
		mu 0 4 268 269 270 271
		f 4 297 299 -301 -295
		mu 0 4 269 272 273 270
		f 4 302 304 -306 -300
		mu 0 4 272 274 275 273
		f 4 306 235 -308 -305
		mu 0 4 274 236 239 275
		f 4 148 229 -231 -229
		mu 0 4 276 277 278 279
		f 4 -197 233 234 -232
		mu 0 4 220 219 280 281
		f 4 149 236 -238 -230
		mu 0 4 277 282 283 278
		f 4 -200 231 240 -239
		mu 0 4 222 220 281 284
		f 4 150 241 -243 -237
		mu 0 4 282 285 286 283
		f 4 -202 238 245 -244
		mu 0 4 223 222 284 287
		f 4 151 246 -248 -242
		mu 0 4 285 288 289 286
		f 4 -204 243 250 -249
		mu 0 4 224 223 287 290
		f 4 152 251 -253 -247
		mu 0 4 288 291 292 289
		f 4 -206 248 255 -254
		mu 0 4 225 224 290 293
		f 4 153 256 -258 -252
		mu 0 4 291 294 295 292
		f 4 -208 253 260 -259
		mu 0 4 226 225 293 296
		f 4 154 261 -263 -257
		mu 0 4 294 297 298 295
		f 4 -210 258 265 -264
		mu 0 4 227 226 296 299
		f 4 155 266 -268 -262
		mu 0 4 297 300 301 298
		f 4 -212 263 270 -269
		mu 0 4 228 227 299 302
		f 4 156 271 -273 -267
		mu 0 4 300 303 304 301
		f 4 -214 268 275 -274
		mu 0 4 229 228 302 305
		f 4 157 276 -278 -272
		mu 0 4 303 306 307 304
		f 4 -216 273 280 -279
		mu 0 4 230 229 305 308
		f 4 158 281 -283 -277
		mu 0 4 306 309 310 307
		f 4 -218 278 285 -284
		mu 0 4 231 230 308 311
		f 4 159 286 -288 -282
		mu 0 4 309 312 313 310
		f 4 -220 283 290 -289
		mu 0 4 232 231 311 314
		f 4 160 291 -293 -287
		mu 0 4 312 315 316 313
		f 4 -222 288 295 -294
		mu 0 4 233 232 314 317
		f 4 161 296 -298 -292
		mu 0 4 315 318 319 316
		f 4 -224 293 300 -299
		mu 0 4 234 233 317 320
		f 4 162 301 -303 -297
		mu 0 4 318 321 322 319
		f 4 -226 298 305 -304
		mu 0 4 235 234 320 323
		f 4 163 228 -307 -302
		mu 0 4 321 276 279 322
		f 4 -228 303 307 -234
		mu 0 4 219 235 323 280;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CC8098A1-4419-2310-CF29-1E91837DDDB9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "72BEDAB0-490E-18BC-0812-7BBC7E3C1502";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D20148F0-4966-ACF1-FBD3-D19C49695623";
createNode displayLayerManager -n "layerManager";
	rename -uid "6868046C-4E57-2047-55FF-97AB2B60E9D9";
createNode displayLayer -n "defaultLayer";
	rename -uid "46D39F38-45CC-0B34-4D45-9B982B58889F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A14DEE9F-4952-8EF6-C245-32AF55ED90BE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DCECD3B6-449F-9B58-8694-39B177EF4A0F";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2B1ACF38-48E2-DC81-3115-058196BC02FE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B5D15094-42D8-8CF3-2031-DE9AF8E44B80";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4E0DAA57-4902-A979-FEBA-A792B15EC876";
	setAttr ".version" -type "string" "5.3.5.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "3F10D4D8-4EA2-0DDA-71F9-8184A3E5F78D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "226286F8-4454-150F-03E3-92A5333D0DC5";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "558AFCB0-4C93-8832-AA27-3D999EE1EBEA";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode groupId -n "groupId1";
	rename -uid "55185688-46F1-F7FE-8FC3-619A99034CDB";
	setAttr ".ihi" 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "25B614CB-4099-5174-24B7-B78B7A25D5EB";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "hammer_geoShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "hammer_geoShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "hammerHandle_geoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hammerMain_geoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hammerBack_geoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hammerBack_geoShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hammerHead_geoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "hammer_geoShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of hammer_v001.ma
