#include "directory.h"

int main()
{
	dir::touch("test/aloha");
	dir::rename("test", "papa");

	return 0;
}