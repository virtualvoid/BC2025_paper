add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  my ($base) = @_;

  $base =~ s!.*/!!;

  return system("makeglossaries -d out \"$base\"");
}