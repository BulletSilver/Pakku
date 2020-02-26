use Pakku::Dist;

unit class Pakku::DepSpec::Raku;
  also is CompUnit::DependencySpecification;


method new ( %spec ) { self.bless: |%spec }

multi method ACCEPTS ( Pakku::DepSpec::Raku:D: Pakku::Dist $dist --> Bool:D ) {

  return False unless $.short-name ~~ any( $dist.name, $dist.provides );
  return False unless $dist.ver    ~~ $.version-matcher;
  return False unless $dist.auth   ~~ $.auth-matcher;
  return False unless $dist.api    ~~ $.api-matcher;

  True;

}


