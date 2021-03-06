unit class Pakku::DepSpec::Bin;
  also is CompUnit::DependencySpecification;

method new ( %spec ) {

  #TODO: Get correct name;

  if %spec<short-name> {

    self.bless: |%spec;
  }

  else {
    my $default-name = %spec<name><by-distro.name>{''};
    my $short-name = %spec<name><by-distro.name>{$*DISTRO.name} // $default-name // %spec<name>;

    self.bless: |%spec, :$short-name;

  }

}
