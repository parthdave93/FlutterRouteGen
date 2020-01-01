import 'dart:convert';
import 'dart:io';

const routeClassName = "RoutePusher";
const routeFilePath = "lib/route";
const modulesRouteFiles = ["flutter_chat_module/route/example_route.dart"];

main(List<String> arguments) async{
  var arguments = [
    "flutter","packages","pub","run","build_runner","build","--delete-conflicting-outputs",
    "--define","routegen=output_path=$routeFilePath",
    "--define","routegen=class_name=$routeClassName"
  ];
  modulesRouteFiles.forEach((module){
    arguments.add("--define");
    arguments.add("routegen=modules_route_file=$module");
  });

  var process = await Process.start('bash',arguments,runInShell: true);
  process.stdout
      .transform(utf8.decoder)
      .listen((data) { print(data); });

  /*Process.run('bash',arguments, workingDirectory: "./").then((result) {
    print("----------------------");
    String dependencies = result.stdout as String;
    print("output: $dependencies");
//    stdout.write(result.stdout);
    stderr.write(result.stderr);
    print("----------------------");
    exitCode = 2;
  }).catchError((e){
    print(e);
  });*/
}