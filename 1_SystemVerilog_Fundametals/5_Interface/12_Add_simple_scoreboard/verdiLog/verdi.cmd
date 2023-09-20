simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/12_Add_simple_scoreboard/simv" \
           -args
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/12_Add_simple_scoreboard/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/12_Add_simple_scoreboard/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 935 204 960 332
srcHBSelect "tb" -win $_nTrace1
srcHBSelect "tb.dut" -win $_nTrace1 -add
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {tb}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {aif(add_if)}
wvAddSignal -win $_nWave2 "/tb/aif/a\[3:0\]" "/tb/aif/b\[3:0\]" \
           "/tb/aif/sum\[4:0\]" "/tb/aif/clk"
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]" "/tb/dut/clk"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvResizeWindow -win $_nWave2 1241 682 1289 692
wvResizeWindow -win $_nWave2 1241 682 1300 707
wvResizeWindow -win $_nWave2 1241 698 1300 691
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
