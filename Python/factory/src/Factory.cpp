#include "Factory.h"

int Foo::m_instances=0;

Foo::Foo()
{

  std::cout<<"foo created "<<++m_instances<<'\n';
}

std::unique_ptr<Foo> Factory::createFoo()
{

  return std::unique_ptr<Foo>(new Foo());
}

