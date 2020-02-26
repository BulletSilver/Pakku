unit class Pakku::DepSpec::Perl;
  also is CompUnit::DependencySpecification;

has $.name;

method new ( %spec ) { self.bless: |%spec }

