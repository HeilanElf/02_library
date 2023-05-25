// 导入异步
import 'dart:async';
void runUsingFuture() {
  // ...
  findEntryPoint().then((entryPoint) {
    return runExecutable(entryPoint, args);
  }).then(flushThenExit);
}

Future<void> runUsingAsyncAwait() async {
  // ...
  var entryPoint = await findEntryPoint();
  var exitCode = await runExecutable(entryPoint, args);
  await flushThenExit(exitCode);
}

var entryPoint = await findEntryPoint();

try {
  var exitCode = await runExecutable(entryPoint, args);
  await flushThenExit(exitCode);
} catch (e) {
  // 处理错误
}

HttpRequest.getString(url).then((String result) {
  print(result);
});

HttpRequest.getString(url).then((String result) {
  print(result);
}).catchError((e) {
  // 处理或忽略错误
});

Future result = costlyQuery(url);

result
    .then((value) => expensiveWork(value))
    .then((_) => lengthyComputation())
    .then((_) => print('Done!'))
    .catchError((exception) {
  /* 处理异常. */
});

try {
  final value = await costlyQuery(url);
  await expensiveWork(value);
  await lengthyComputation();
  print('Done!');
} catch (e) {
  /*处理异常 */
}

Future<void> deleteLotsOfFiles() async =>  ...
Future<void> copyLotsOfFiles() async =>  ...
Future<void> checksumLotsOfOtherFiles() async =>  ...

await Future.wait([
  deleteLotsOfFiles(),
  copyLotsOfFiles(),
  checksumLotsOfOtherFiles(),
]);
print('Done with all the long steps!');

void main() async {
  Future<void> delete() async =>  ...
  Future<void> copy() async =>  ...
  Future<void> errorResult() async =>  ...
  
  try {
    // 等待列表中的每个未来，返回一个未来列表
    var results = await Future.wait([delete(), copy(), errorResult()]);

  } on Exception catch (e) {
    // Handle the exception...
  }
}

void main() async {
  Future<int> delete() async =>  ...
  Future<String> copy() async =>  ...
  Future<bool> errorResult() async =>  ...

  try {    
    // 等待记录中的每个期货，返回期货记录
    (int, String, bool) result = await Tuple3(delete(), copy(), errorResult()).wait;
  
  } on TupleWaitException catch (e) {
    // 处理异常
  }

  //用结果做点什么 
  var deleteInt  = result.value1;
  var copyString = result.value2;
  var errorBool  = result.value3;
}