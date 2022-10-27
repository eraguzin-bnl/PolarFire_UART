wvAddAllSignals
wvSetWindowTimeUnit 1 ns
wvSetMarker -name "trigger" 1240.000000 ID_RED5 line_solid
wvJumpToolbarUserMarker -name "trigger"
wvSelectSignal -delim . top_level.identify_cycle
wvSetPosition {(G1 0)}
wvMoveSelected
wvSelectSignal -delim . top_level.identify_sampleclock
wvSetPosition {(G1 1)}
wvMoveSelected
