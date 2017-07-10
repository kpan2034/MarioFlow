emu.loadrom("/home/kpan/tf/mario/Super Mario Bros (E).zip")
emu.speedmode("normal")
emu.print("SCRIPT START")
emu.setreadonly(true)

file = io.output("input.csv", "a")

if movie.active() then
	movie.replay()
end

emu.print("PLAYING MOVIE")

while true do
	gui.savescreenshot()
	tb = joypad.get(1)
	s = ""
	for key, value in next, tb, nil do
		t = tostring(value) ..  ","
		s = s .. t
	end		
	s = s:sub(1, -2)
	s = s .. "\n"
	io.write(s);
	emu.frameadvance()
end

io.close()

