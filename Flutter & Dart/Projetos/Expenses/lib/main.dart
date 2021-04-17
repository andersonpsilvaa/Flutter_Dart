import 'dart:math';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/transaction_form.dart';
import 'components/chart.dart';
import 'components/transaction_list.dart';
import 'models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.red[900],
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                    headline6: TextStyle(
                  fontFamily: 'OpenSans-Bold',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ))),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  // Classe que controla a utilização dos componentes
  @override
  void initSate() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  // Classe que mostra o estado da Aplicação
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
  }

  // Classe retira o controle dos componentes
  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  final List<Transaction> _transactions = [
    Transaction(
      id: 't0',
      title: 'Conta t0',
      value: 400,
      date: DateTime.now().subtract(Duration(days: 6)),
    ),
    Transaction(
      id: 't1',
      title: 'Conta t1',
      value: 500,
      date: DateTime.now().subtract(Duration(days: 5)),
    ),
    Transaction(
      id: 't2',
      title: 'Conta t2',
      value: 600,
      date: DateTime.now().subtract(Duration(days: 4)),
    ),
    Transaction(
      id: 't3',
      title: 'Conta t3',
      value: 700,
      date: DateTime.now().subtract(Duration(days: 3)),
    ),
    Transaction(
      id: 't4',
      title: 'Conta t4',
      value: 1800,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
  ];

  bool _showChart = false;

  List<Transaction> get _recentTransations {
    return _transactions.where((tr) {
      return tr.date.isAfter(
        DateTime.now().subtract(Duration(days: 7)),
      );
    }).toList();
  }

  _addTransaction(String title, double value, DateTime date) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  _removeTransaction(String id) {
    setState(() {
      _transactions.removeWhere((tr) => tr.id == id);
    });
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  Widget _getIconButton(IconData icon, Function fn) {
    return Platform.isIOS
        ? GestureDetector(child: Icon(icon), onTap: fn)
        : IconButton(icon: Icon(icon), onPressed: fn);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    final actions = [
      if (isLandscape)
        _getIconButton(_showChart ? Icons.list : Icons.pie_chart, () {
          setState(() {
            _showChart = !_showChart;
          });
        }),
      _getIconButton(
        Platform.isIOS ? CupertinoIcons.add : Icons.add,
        () => _openTransactionFormModal(context),
      ),
    ];

    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text('Despesas Pessoais'),
            trailing: Row(children: actions, mainAxisSize: MainAxisSize.min),
          )
        : AppBar(
            //backgroundColor: Colors.green,
            title: Text('Despesas Pessoais'
                //style: TextStyle(fontSize: 20 * MediaQuery.of(context).textScaleFactor,),
                ),
            actions: actions);

    final availableHeight = mediaQuery.size.height -
        appBar.preferredSize.height -
        mediaQuery.padding.top;

    final bodyPage = SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //if (isLandscape || _showChart || !_showChart)
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text('Exibir Gráfico'),
            //     Switch(
            //       value: _showChart,
            //       onChanged: (value) {
            //         setState(() {
            //           _showChart = value;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            if (_showChart || !isLandscape)
              Container(
                child: Chart(_recentTransations),
                height: availableHeight * (isLandscape ? 0.7 : 0.3),
              ),
            if (!_showChart || !isLandscape)
              Container(
                child: TransactionList(_transactions, _removeTransaction),
                height: availableHeight * (isLandscape ? 0.90 : 0.65),
              ),
          ],
        ),
      ),
    );

    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: appBar,
            child: bodyPage,
          )
        : Scaffold(
            appBar: appBar,
            body: bodyPage,
            floatingActionButton: Platform.isIOS
                ? Container()
                : FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () => _openTransactionFormModal(context),
                  ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
