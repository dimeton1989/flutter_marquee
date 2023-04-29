part of marquee;

class MarqueeState extends State<Marquee> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: (sqrt(widget.messages.join('').length) * 2000).ceil()),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: -1.0).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) controller.repeat();
      });
    controller.forward();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final children = widget.messages.map((message) => Text(message)).cast<Widget>().toList();
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Positioned(
                left: (1.0 + animation.value) * constraints.maxWidth,
                child: FractionalTranslation(
                  translation: Offset(animation.value, 0.0),
                  child: SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: GridView.count(
                      crossAxisCount: children.length,
                      children: children,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
