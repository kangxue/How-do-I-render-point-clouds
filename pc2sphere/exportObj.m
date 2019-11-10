function [] = exportObj(  vertices, faces,  fname )

	fid = fopen(fname, 'W') ;

	NV = size(vertices,1);
	for i=1:NV
		fprintf( fid, 'v %f %f %f\n', vertices(i,1),  vertices(i,2),  vertices(i,3) );
	end
		
	NF = size( faces, 1) ;
	for i=1:NF
		fprintf( fid, 'f %d %d %d\n', faces(i,1),  faces(i,2),  faces(i,3) );
	end

	fclose(fid);
end