import 'models.dart';
import 'package:flutter/widgets.dart' show AssetImage, Color;

const assetsPath = "assets/developers/luke_pighetti/book_reader";

final List books = <Book>[
  Book(
    title: "Principles of \nProduct Design",
    author: "Aarron Walter",
    hero: AssetImage('$assetsPath/ProductDesignCover.png'),
    color: Color(0xFF323CCE),
    body:
        "Have you ever bought a lottery ticket? I admit, I’ve played a few times. You won’t be surprised to learn I never did win the big jackpot. Seeing winners on the evening news gives the false impression that anyone could win, but the odds of winning are long—very long.\n\n"
        "Rod Wolfe knows a thing or 2 about long odds. His friends call him “Lightning Rod” because he’s been struck by lightning not once, but twice. What are the chances? Well, you’re more likely to be the next Rod Wolfe than you are the next lottery winner.",
  ),
  Book(
    title: "Design Thinking Handbook",
    author: "Eli Woolery",
    hero: AssetImage('$assetsPath/DesignThinkingCover.png'),
    color: Color(0xFFE04944),
    body:
        "In 1958, 4 months after Sputnik launched and President Eisenhower created NASA, a Stanford engineering professor named John Arnold proposed that design engineering should be human-centered.\n\n"
        "This was a strange thing for Arnold to introduce. It was an era in which engineers were largely focused on twin Cold War driven goals: the space race and the optimization of the hydrogen bomb.",
  ),
  Book(
    title: "Design Leadership Handbook",
    author: "Aarron Walter",
    hero: AssetImage('$assetsPath/DesignLeadershipCover.png'),
    color: Color(0xFF782AA1),
    body:
        "Andy Law spotted an opportunity. As a designer at Netflix, he saw firsthand the need for someone to step up and bridge the gap between mobile design and the company’s engineering management. Things would be more efficient with some design leadership. Andy raised his hand and found himself in a new leadership position.\n\n"
        "Though he had a clear understanding of the product and his craft, the mechanics of leading a team was new territory with an intimidating learning curve. He approached leadership as he would any design challenge—with research.",
  ),
  Book(
    title: "Design Systems Handbook",
    author: "Marco Suarez",
    hero: AssetImage('$assetsPath/DesignSystemsCover.png'),
    color: Color(0xFF488C59),
    body:
        "In the 1960s, computer technology began outpacing the speed of software programming. Computers became faster and cheaper, but software development remained slow, difficult to maintain, and prone to errors. This gap, and the dilemma of what to do about it, became known as the “software crisis.”\n\n"
        "In 1968, at the NATO conference on software engineering, Douglas McIlroy presented component-based development as a possible solution to the dilemma. Component-based development provided a way to speed up programming’s potential by making code reusable, thus making it more efficient and easier to scale. This lowered the effort and increased the speed of software development, allowing software to better utilize the power of modern computers.",
  ),
  Book(
    title: "Introducing DesignOps",
    author: "Dave Malouf",
    hero: AssetImage('$assetsPath/DesignOpsCover.png'),
    color: Color(0xFFDA4A71),
    body:
        "I’ve always been on the fringe of people in the design community who love how design works more than they love designing. Throughout my career as a designer, I have leaned more toward process over practice, and in some circles I was made to feel like a pariah because of my fixation on semantics (resulting in my last name being affectionately turned into a verb by colleagues: “maloufing”).\n\n"
        "This focus on process took me to Queens, New York, in November of 2017, where I joined nearly 300 people to learn, share, and work on formalizing a new aspect of design practice management, DesignOps. The DesignOps Summit marked a turning point, as design operations had begun to emerge across the design industry. But for me, it was also the culmination of a very long, personal journey through design.",
  ),
];
