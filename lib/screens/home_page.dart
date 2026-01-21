import 'package:flutter/material.dart';
import '../model/task_model.dart';
import 'add_task_page.dart';
import 'task_detail_page.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Task> tasks = [
    Task(
      name: "Matematika",
      description: "Kerjakan soal bab 3",
      deadline: "2026-01-25",
    ),
    Task(
      name: "Pemrograman",
      description: "Buat aplikasi Flutter sederhana",
      deadline: "2026-01-23",
    ),
    Task(
      name: "Basis Data",
      description: "Buat ERD tugas akhir",
      deadline: "2026-01-24",
    ),
  ];

  void addTask(Task task) {
    setState(() {
      tasks.insert(0, task);
    });
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    int completedTasks = tasks.where((t) => t.completed).length;
    int pendingTasks = tasks.length - completedTasks;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Mahasiswa"),
        actions: [
          IconButton(icon: const Icon(Icons.logout), onPressed: logout),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purpleAccent, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Statistik
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Belum Selesai",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "$pendingTasks",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Selesai", style: TextStyle(fontSize: 16)),
                        const SizedBox(height: 5),
                        Text(
                          "$completedTasks",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Daftar tugas
            Expanded(
              child: AnimatedList(
                initialItemCount: tasks.length,
                itemBuilder: (context, index, animation) {
                  Task task = tasks[index];
                  Color cardColor = task.completed
                      ? Colors.green[200]!
                      : Colors.red[200]!;

                  return SizeTransition(
                    sizeFactor: animation,
                    child: Card(
                      color: cardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      child: ListTile(
                        title: Text(
                          task.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          "${task.description}\nDeadline: ${task.deadline}",
                        ),
                        isThreeLine: true,
                        trailing: Icon(
                          task.completed
                              ? Icons.check_circle
                              : Icons.pending_actions,
                          color: task.completed ? Colors.green : Colors.red,
                        ),
                        onTap: () async {
                          Task? updatedTask = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TaskDetailPage(
                                task: task,
                                onUpdate: () {
                                  setState(() {});
                                },
                              ),
                            ),
                          );
                          if (updatedTask != null) {
                            setState(() {
                              tasks[index] = updatedTask;
                            });
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Task? newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddTaskPage()),
          );
          if (newTask != null) addTask(newTask);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
