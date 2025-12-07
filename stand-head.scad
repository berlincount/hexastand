# CC-BY-SA https://github.com/berlincount/hexastand/
include <BOSL2/std.scad>
include <BOSL2/screws.scad>
diff()
  shoulder_screw("iso", 20,
   length=1, thread_len=12, drive="none",
   head="hex", head_size=[20,10])
  position("head_center") attach(LEFT)
  screw_hole("M6,30",
   anchor=TOP,
   bevel1="reverse");
