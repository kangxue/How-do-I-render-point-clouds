function []=pointcloud2sphere( inPlyFname1,  outObjFname2, radius )

	[sphereV   sphereF ] =read_vertices_and_faces_from_obj_file( 'sphere.obj') ;

	sphereV = sphereV * radius ;
	
	nsphereV = size(sphereV,1) ;
	nsphereF = size(sphereF,1) ;
		
	ptCloud = pcread(inPlyFname1) ;
	pointXYZ = ptCloud.Location ;
	
	npoints = size(pointXYZ,1)  ;
	
	
	
	mergedVertices = repmat(sphereV, [npoints 1] )  +   ...
			( reshape(   (  repmat(pointXYZ, [1 nsphereV]) )' ,  [3 npoints*nsphereV] ) )'  ;
	
	mergedFaces = repmat( sphereF, [npoints 1]  )  + ...
				( reshape( repmat( (0:npoints-1)*nsphereV , [3*nsphereF 1] ),  [3  npoints*nsphereF]) )' ;


	
	exportObj(mergedVertices, mergedFaces, outObjFname2) ;
	
end