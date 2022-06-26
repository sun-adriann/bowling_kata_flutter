import '../models/frame.dart';

abstract class IGameService {
  Frame rollForFrame(Frame frame);
  List<Frame> calculateFramesScores(List<Frame> frames);
}
