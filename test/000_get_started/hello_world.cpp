#include <v8.h>
#include <cstring>

using namespace v8;

int main(int argc, char* argv[]) {
	  // Issue 3627
	  V8::Initialize();

	  // Create a new Isolate and make it the current one.
	  Isolate* isolate = Isolate::New();
	  Isolate::Scope isolate_scope(isolate);

	  // Create a stack-allocated handle scope.
	  HandleScope handle_scope(isolate);

	  // Create a new context.
	  Local<Context> context = Context::New(isolate);

	  // Enter the context for compiling and running the hello world script.
	  Context::Scope context_scope(context);

	  // Create a string containing the JavaScript source code.
	  Local<String> source = String::NewFromUtf8(isolate, "'Hello' + ', World!'");

	  // Compile the source code.
	  Local<Script> script = Script::Compile(source);

	  // Run the script to get the result.
	  Local<Value> result = script->Run();

	  // Convert the result to an UTF8 string and print it.
	  String::Utf8Value utf8(result);

	  printf("%d\n", utf8.length());
	  printf("%s\n", *utf8);

	  if(utf8.length()!=13){
		  return 1;
	  }
	  if(std::strcmp("Hello, World!",*utf8)!=0){
		  return 1;
	  }

	  return 0;
}
