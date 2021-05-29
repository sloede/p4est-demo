#include <p4est.h>

int main(int argc, char **argv)
{
  p4est_connectivity_t *conn;

  /* read from INP (ABAQUS) file */
  conn = p4est_connectivity_read_inp("box.inp");

  /* Destroy the  connectivity structure. */
  p4est_connectivity_destroy (conn);

  return 0;
}
