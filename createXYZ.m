% This script creates an XYZ file from a data matrix (i*j), and corresponding
% longitude and latitude arrays. Longitude array should follow the lines (i) of
% the data array, where latitude array should follow the columns (j) of data
% array. If the opposite is true, change z(i,j) to z(j,i).

load lat.txt % Latitudes (j*1)
load lon.txt % Longitudes (i*1)
load data.txt % Data matrix (i*j)

x=lon;
y=lat;
z=data;

fileID=fopen('output_xyz.txt','w');
for i=1:numel(x)
    for j=1:numel(y)
        fprintf(fileID,'%f ',x(i));
        fprintf(fileID,'%f ',y(j));
        fprintf(fileID,'%f\n',z(i,j));
    end
end
fclose(fileID);
