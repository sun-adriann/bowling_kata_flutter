import '../models/frame.dart';

abstract class IGameService {
  /// Calculate the given frame's total score based on the
  /// current game's frames.
  ///
  /// This is where we do a "roll"
  Frame caculateFrameScore(int frameIndex, List<Frame> frames);

  /// Calculate the given frame's total score based on the
  /// current game's frames.
  ///
  /// This is where we do a "roll"
  Frame caculatePreviousFrameScore(int frameIndex, List<Frame> frames);
}
