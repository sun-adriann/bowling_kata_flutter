import '../models/frame.dart';

abstract class IGameService {
  Frame updateFrameForDownedPins(Frame frame, int pinsDown);
  List<Frame> calculateFramesScores(List<Frame> frames);
}
