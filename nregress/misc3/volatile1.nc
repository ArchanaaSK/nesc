typedef unsigned long size_t;

struct {
  int current_node;
} tos_state;

void init(void) @spontaneous()
{
  tos_state.current_node = 0;
}

module volatile1 { }
implementation
{
  volatile int x = 23;

  void f() @spontaneous() {
    x = 2;
  }
}
