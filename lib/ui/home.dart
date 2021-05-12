import 'package:flutter/material.dart';
import 'dart:math';


class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes = ["“All our dreams can come true, if we have the courage to pursue them.” – Walt Disney",
    "“The secret of getting ahead is getting started.” – Mark Twain",
    "I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed."
        " I’ve failed over and over and over again in my life and that is why I succeed.” – Michael Jordan",
    "“Don’t limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you."
        " What you believe, remember, you can achieve.” – Mary Kay Ash",
    "“The best time to plant a tree was 20 years ago. The second best time is now.” – Chinese Proverb",
    "“Only the paranoid survive.” – Andy Grove",
    "“It’s hard to beat a person who never gives up.” – Babe Ruth",
    "“I wake up every morning and think to myself, ‘how far can I push this company in the next 24 hours.’” – Leah Busque",
    "“If people are doubting how far you can go, go so far that you can’t hear them anymore.” – Michele Ruiz",
    "“We need to accept that we won’t always make the right decisions, that we’ll screw up royally sometimes – understanding that failure is not the opposite of success, it’s part of success.” – Arianna Huffington",
    "“Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE.” – Joss Whedon",
    "“You’ve gotta dance like there’s nobody watching, love like you’ll never be hurt, sing like there’s nobody listening, and live like it’s heaven on earth.” ― William W. Purkey",
    "“Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.”― Neil Gaiman",
    "“Everything you can imagine is real.”― Pablo Picasso",
    "“When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us.” ― Helen Keller",
    "“Do one thing every day that scares you.”― Eleanor Roosevelt",
    "“It’s no use going back to yesterday, because I was a different person then.”― Lewis Carroll",
    "“Smart people learn from everything and everyone, average people from their experiences, stupid people already have all the answers.” – Socrates",
    "“Do what you feel in your heart to be right – for you’ll be criticized anyway.”― Eleanor Roosevelt",
    "“Happiness is not something ready made. It comes from your own actions.” ― Dalai Lama XIV",
    "“Whatever you are, be a good one.” ― Abraham Lincoln",
    "“The same boiling water that softens the potato hardens the egg. It’s what you’re made of. Not the circumstances.” – Unknown",
    "“If we have the attitude that it’s going to be a great day it usually is.” – Catherine Pulsifier",
    "“You can either experience the pain of discipline or the pain of regret. The choice is yours.”  – Unknown",
    "“Impossible is just an opinion.” – Paulo Coelho",
    "“Your passion is waiting for your courage to catch up.” – Isabelle Lafleche",
    "“Magic is believing in yourself. If you can make that happen, you can make anything happen.” – Johann Wolfgang Von Goethe",
    "“If something is important enough, even if the odds are stacked against you, you should still do it.” – Elon Musk",
    "“Hold the vision, trust the process.” – Unknown",
    "“Don’t be afraid to give up the good to go for the great.” – John D. Rockefeller",
    "“People who wonder if the glass is half empty or full miss the point. The glass is refillable.” – Unknown",
    "“The hard days are what make you stronger.” – Aly Raisman",
    "“If you believe it’ll work out, you’ll see opportunities. If you don’t believe it’ll work out, you’ll see obstacles.” – Wayne Dyer",
    "“Keep your eyes on the stars, and your feet on the ground.” – Theodore Roosevelt",
    "“You can waste your lives drawing lines. Or you can live your life crossing them.” – Shonda Rhimes",
    "“You’ve got to get up every morning with determination if you’re going to go to bed with satisfaction.” – George Lorimer",
    "“I now tried a new hypothesis: It was possible that I was more in charge of my happiness than I was allowing myself to be.” – Michelle Obama",
    "“In a gentle way, you can shake the world.” – Mahatma Gandhi",
    "“If opportunity doesn’t knock, build a door.” – Kurt Cobain",
    "“Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.” – Roy T. Bennett",
    "“Work hard in silence, let your success be the noise.” – Frank Ocean",
    "“Sometimes when you’re in a dark place you think you’ve been buried but you’ve actually been planted.” – Christine Caine",
    "“Don’t limit your challenges. Challenge your limits.” – Unknown",
    "“Whenever you find yourself doubting how far you can go, just remember how far you have come.” – Unknown",
    "“Everyone has inside them a piece of good news. The good news is you don’t know how great you can be! How much you can love! What you can accomplish! And what your potential is.” – Anne Frank",
    "“Some luck lies in not getting what you thought you wanted but getting what you have, which once you have got it you may be smart enough to see is what you would have wanted had you known.” – Garrison Keillor",
    "“Don’t quit yet, the worst moments are usually followed by the most beautiful silver linings. You have to stay strong, remember to keep your head up and remain hopeful.” – Unknown",
    "“When written in Chinese the word “crisis” is composed of two characters – one represents danger and the other represents opportunity.” – John F Kennedy",
    "“Good. Better. Best. Never let it rest. ‘Til your good is better and your better is best.” – St. Jerome.",
    "“In the middle of every difficulty lies opportunity.” – Albert Einstein",
    "“Start where you are. Use what you have. Do what you can.” – Arthur Ashe",
    "“Dreams don’t work unless you do.” – John C. Maxwell",
    "“Go the extra mile. It’s never crowded there.” – Dr. Wayne D. Dyer",
    "“Keep your face always toward the sunshine – and shadows will fall behind you.” – Walt Whitman",
    "“What defines us is how well we rise after falling.” – Lionel from Maid in Manhattan Movie",
    "H.O.P.E. = Hold On. Pain Ends.",
    "Make each day your masterpiece. – John Wooden",
    "“Wherever you go, go with all your heart” – Confucius",
    "“Turn your wounds into wisdom” – Oprah",
    "“We can do anything we want to if we stick to it long enough.” – Helen Keller",
    "“Begin anywhere.” – John Cage",





  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(child: Text(quotes[_index % quotes.length],
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontStyle: FontStyle.italic,
                  fontSize: 16.5,
                ),))),
            Divider(thickness: 2.3,),
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: TextButton.icon(onPressed: _showQuote,
                  icon: Icon(Icons.wb_sunny),
                  style: TextButton.styleFrom(primary: Colors.white,
                  backgroundColor: Colors.greenAccent.shade700,),
                  label: Text("Inspire Me!")),
            )
            

          ],

        ),

      ),


    );
  }


  void _showQuote() {
    setState(() {
      Random random = new Random();
      _index = random.nextInt(51);
    });
  }
}
