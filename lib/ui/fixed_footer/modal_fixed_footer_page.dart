import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ModalFixedFooterPage extends StatelessWidget {
  const ModalFixedFooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('modal fixed footer'),
      ),
      body: SafeArea(
        child: Center(
          child: OutlinedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context) {
                  return const _FixedFooterView();
                },
              );
            },
            child: const Text('show Modal'),
          ),
        ),
      ),
    );
  }
}

class _FixedFooterView extends StatelessWidget {
  const _FixedFooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildHeader(),
                    _buildBody(),
                  ],
                ),
              ),
            ),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'タイトル',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(height: 1),
      ],
    );
  }

  Widget _buildBody() {
    final numbers = [for (int i = 0; i < 10; i++) i];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        final number = numbers[index];

        return ListTile(
          title: Text('$number'),
        );
      },
    );
  }

  Widget _buildFooter(BuildContext context) {
    const dimension = 8.0;
    final style = OutlinedButton.styleFrom(
      minimumSize: const Size(double.infinity, 44.0),
    );

    return Column(
      children: [
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.all(dimension),
          child: Row(
            children: [
              Flexible(
                child: OutlinedButton(
                  style: style,
                  onPressed: () {
                    context.router.pop();
                  },
                  child: const Text('キャンセル'),
                ),
              ),
              const SizedBox(width: dimension),
              Flexible(
                child: OutlinedButton(
                  style: style,
                  onPressed: () {
                    // Something to do.
                  },
                  child: const Text('確定'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
