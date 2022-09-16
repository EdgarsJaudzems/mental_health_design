import 'package:flutter/material.dart';
import 'package:mental_health_design/utils/emoji_custom.dart';
import 'package:mental_health_design/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              children: [
                // Greetings Row ----------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, Eddy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '01 January 2023',
                          style: TextStyle(
                            color: Colors.blue[200],
                          ),
                        )
                      ],
                    ),

                    // Notification -----------------------------------
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[500],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // Search Bar ------------------------------------------
                Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    )),
                const SizedBox(height: 25),

                // How do you feel ------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),

                const SizedBox(height: 25),

                // Emojis --------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        EmojiCustom(emojiIcon: '🫤'),
                        Text('Sad',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Column(
                      children: const [
                        EmojiCustom(emojiIcon: '😤'),
                        Text('Thinking',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Column(
                      children: const [
                        EmojiCustom(emojiIcon: '🤡'),
                        Text('Crazy',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Column(
                      children: const [
                        EmojiCustom(emojiIcon: '😁'),
                        Text('Funny',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // White screen ----------------------------------------------
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: Column(
                    children: [
                      // Exercise heading -------------------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Exercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      const SizedBox(height: 25),
                      // Listview of Exercises ---------------------------
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                                icon: Icons.favorite_outline,
                                exerciseName: 'Reading',
                                numberOfExercises: 10),
                            ExerciseTile(
                                icon: Icons.memory,
                                exerciseName: 'Thinking',
                                numberOfExercises: 8),
                            ExerciseTile(
                                icon: Icons.chat,
                                exerciseName: 'Speaking',
                                numberOfExercises: 12),
                            ExerciseTile(
                                icon: Icons.code,
                                exerciseName: 'Coding',
                                numberOfExercises: 18),
                            ExerciseTile(
                                icon: Icons.run_circle,
                                exerciseName: 'Running',
                                numberOfExercises: 9),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
