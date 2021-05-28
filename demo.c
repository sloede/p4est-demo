#include <p4est.h>

int main(int argc, char **argv)
{
  p4est_t            *p4est;
  p4est_connectivity_t *conn;

  conn = p4est_connectivity_new_periodic();
  p4est = p4est_new(0, conn, 0, NULL, NULL);
  p4est_save("testfile", p4est, 0);

  /* Destroy the p4est and the connectivity structure. */
  p4est_destroy (p4est);
  p4est_connectivity_destroy (conn);

  return 0;
}
