unit class Pakku::DepSpec::Java;
  also is CompUnit::DependencySpecification;

  has $.name;

  method new ( %spec ) { self.bless: |%spec }


