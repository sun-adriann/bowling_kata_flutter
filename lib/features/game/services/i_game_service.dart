import '../models/frame.dart';

abstract class IGameService {
  Future<Frame> roll(Frame currentFrame);
}
