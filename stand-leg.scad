# CC-BY-SA https://github.com/berlincount/hexastand/
include <BOSL2/std.scad>
include <BOSL2/screws.scad>

difference() {
  union() {
    // legs
    shoulder_screw("iso", 20,
      length=1, thread_len=5, drive="none",
      head="hex", head_size=[20,40])
    position("head_top") attach(BOTTOM+FRONT+LEFT)
    nut_trap_inline(90, "M10", anchor=BOTTOM+LEFT);

    shoulder_screw("iso", 20,
      length=1, thread_len=5, drive="none",
      head="hex", head_size=[20,40])
    position("head_top") attach(BOTTOM+FRONT+RIGHT)
    nut_trap_inline(90, "M10", anchor=BOTTOM+LEFT);

    shoulder_screw("iso", 20,
      length=1, thread_len=5, drive="none",
      head="hex", head_size=[20,40])
    position("head_top") attach(BOTTOM+BACK+LEFT)
    nut_trap_inline(90, "M10", anchor=BOTTOM+LEFT);

    shoulder_screw("iso", 20,
      length=1, thread_len=5, drive="none",
      head="hex", head_size=[20,40])
    position("head_top") attach(BOTTOM+BACK+RIGHT)
    nut_trap_inline(90, "M10", anchor=BOTTOM+LEFT);

    // side connector
    shoulder_screw("iso", 20,
      length=1, thread_len=5, drive="none",
      head="hex", head_size=[20,40])
    position("head_top") attach(FRONT, overlap=10)
    shoulder_screw("iso", 20,
      length=1, thread_len=12, drive="none",
      anchor=TOP, head="hex", head_size=[20,40]);

    // ground support
    down(40) right(45) back(-42) nut_trap_inline(90, "M10", orient=LEFT);
    down(40) left(42) back(45) nut_trap_inline(90, "M10", orient=FRONT);
    down(40) right(42) back(45) nut_trap_inline(90, "M10", orient=FRONT);

    // upward connector
    diff()
      shoulder_screw("iso", 20,
        length=1, thread_len=5, drive="none",
        head="hex", head_size=[20,120])
      attach(TOP)
      screw_hole("M16,15",
        anchor=TOP,thread=true,
        bevel1="reverse");
  }
  // level ground
  down(160) left(60) back(-60) cube(120);
}
