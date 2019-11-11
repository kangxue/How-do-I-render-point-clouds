
### How do I render point clouds?
I received some emails/messages asking me how did I render point clouds in [P2P-NET](https://github.com/kangxue/P2P-NET) and [LOGAN](https://github.com/kangxue/LOGAN).  

Here is how:

- Convert the point cloud into a set of spheres, and save it in an obj file. You can use the matlab code under "pc2sphere".

- Use [Keyshot](https://www.keyshot.com/) to render the obj file.  The software provides a library of nice materials. The education version is $95/yr.

- You can also write a python script to render a batch of files. See the document [here](https://keyshot.com/scripting/doc/7.0/quickstart.html).

Hope this is helpful.


### Acknowledgments
The author of the file "read_vertices_and_faces_from_obj_file.m" is [Alec Jacobson](http://www.alecjacobson.com/weblog/?p=917).
