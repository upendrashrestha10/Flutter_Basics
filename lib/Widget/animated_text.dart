import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextwidget extends StatelessWidget {
  const AnimatedTextwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("Animated Text"),
      ),

      body: Center(
        child: Column(
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Upendra Shrestha', 
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: Duration(milliseconds: 100)
                )
              ],
              totalRepeatCount: 5,
              pause: Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
        
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Upendra', 
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ), 
                ),
        
                RotateAnimatedText('Shrestha', 
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ), 
                )
              ],
              // totalRepeatCount: 5,
              // pause: Duration(milliseconds: 100),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),

            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Upendra Shrestha', 
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: Duration(milliseconds: 100)
                )
              ],
              totalRepeatCount: 5,
              pause: Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            
          ],
        ),
      ),
    );
  }
}