import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';

class LoaderWidget extends StatefulWidget {
  const LoaderWidget({super.key, required this.hideCallback});

  final Function() hideCallback;

  @override
  State<StatefulWidget> createState() => _LoaderState();
}

class _LoaderState extends State<LoaderWidget> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 400),
  );
  late final Animation<double> _myAnimation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.themeModeColors.bgContainer.withOpacity(0.3),
      ),
      child: Align(
        child: Container(
          width: 80,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.themeModeColors.bgContainer,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  spreadRadius: 0,
                  blurRadius: 30,
                  offset: const Offset(0, 0)),
            ],
          ),
          child: Stack(
            children: [
              const SizedBox(
                  width: 35,
                  height: 35,
                  child: CircularProgressIndicator(strokeWidth: 2)),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: FadeTransition(
                  opacity: _myAnimation,
                  child: Material(
                    color: Colors.transparent,
                    child: Ink(
                      child: InkWell(
                        onTap: () => widget.hideCallback(),
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
