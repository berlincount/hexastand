// CC-BY-SA https://github.com/berlincount/hexastand/
include <BOSL2/std.scad>
include <BOSL2/screws.scad>
diff()
  shoulder_screw("iso", 20,
   length=1, thread_len=12, drive="none",
   head="hex", head_size=[20,150])
  attach(TOP)
  screw_hole("M16,15",
   anchor=TOP,thread=true,
   bevel1="reverse");
