
function CreateFolder(index, name)
  reaper.InsertTrackAtIndex(index, false)
  folder = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(folder, 'P_NAME', name, true)
  reaper.SetMediaTrackInfo_Value( folder, 'I_FOLDERDEPTH',1)
  reaper.SetMediaTrackInfo_Value(folder, 'I_FOLDERCOMPACT', 0)
end

function ImportAudio(index, channel, trackName, fileName, lastInFolder)
  local folderDepth = 0
  if lastInFolder then folderDepth = -1 end

  reaper.SetEditCurPos(0, false, false)
  reaper.InsertTrackAtIndex(index, false)
  tr = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(tr, 'P_NAME', trackName, true)
  reaper.SetMediaTrackInfo_Value( tr, 'I_FOLDERDEPTH',folderDepth)
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
  item = reaper.GetTrackMediaItem(tr, 0)
  take = reaper.GetActiveTake(item)
  reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", channel + 64 + 2)
end

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 11/stage/moduleMusic11-part1-v1.caf"

CreateFolder(0, "Short")
ImportAudio(1, 3, "Short FM1", audioFile, false)
ImportAudio(2, 7, "Short FM2", audioFile, false)
ImportAudio(3, 13, "Short Resonator 1", audioFile, false)
ImportAudio(4, 14, "Short Resonator 1 mirror", audioFile, false)
ImportAudio(5, 21, "Short Resonator 2", audioFile, false)
ImportAudio(6, 23, "Short Resonator 2 mirror", audioFile, true)

CreateFolder(7, "Pads")
ImportAudio(8, 1, "FM 1", audioFile, false)
ImportAudio(9, 5, "FM 2", audioFile, false)
ImportAudio(10, 9, "Resonator 1", audioFile, false)
ImportAudio(11, 11, "Resonator 1 mirror", audioFile, false)
ImportAudio(12, 17, "Resonator 2", audioFile, false)
ImportAudio(13, 19, "Resonator 3 mirror", audioFile, true)
