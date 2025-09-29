
(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(24)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/sc/module-music-11/module_music_11/module-music-11-part1-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/stage/moduleMusic11-part1-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 240,
    action: { "done".postln }
);

server.remove;
)



(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(24)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/sc/module-music-11/module_music_11/module-music-11-part2-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/stage/moduleMusic11-part2-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 170,
    action: { "done".postln }
);

server.remove;
)


(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(24)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/sc/module-music-11/module_music_11/module-music-11-part3-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/stage/moduleMusic11-part3-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 130,
    action: { "done".postln }
);

server.remove;
)
