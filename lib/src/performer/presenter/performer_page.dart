import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:tota/src/performer/domain/entities/performer_entity.dart';

import 'performer_store.dart';

class PerformerPage extends StatefulWidget {
  const PerformerPage({Key? key}) : super(key: key);

  @override
  State<PerformerPage> createState() => _PerformerPageState();
}

class _PerformerPageState extends ModularState<PerformerPage, PerformerStore> {
  @override
  void initState() {
    super.initState();

    store.getAllPerformers();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedBuilder<PerformerStore, Exception,
        List<PerformerEntity>>.transition(
      store: store,
      transition: (_, child) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: child,
        );
      },
      onLoading: (_) => const Center(child: CircularProgressIndicator()),
      onState: (_, state) {
        return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state[index].name),
              );
            });
      },
    );
  }
}
