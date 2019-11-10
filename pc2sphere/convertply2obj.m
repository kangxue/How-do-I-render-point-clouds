function [] = convertply2obj(inputdir)



outputdir = [ inputdir  ]

if ~exist(outputdir, 'dir')
	mkdir(outputdir)
end



fileList = dir(  [inputdir '/*.ply' ]) ;

numfiles = size( fileList,1 )

for i=1:numfiles
i
	fname = [inputdir '/' fileList(i).name ]
	targetname = [outputdir '/'  fileList(i).name(1:end-4) '.obj' ]
	
	
	pointcloud2sphere( fname ,   targetname,   0.02 ) ;
	
	
end
	
	
	
	