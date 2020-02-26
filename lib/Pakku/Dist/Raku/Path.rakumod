use Pakku::Dist::Raku;

unit class Pakku::Dist::Raku::Path;
  also is Pakku::Dist::Raku;
  also is Distribution::Path;

method new ( $path ) {

  my @meta-files = < META6.json META.info >;

  my $meta-file = @meta-files.map( -> $file { $path.add: $file } ).first( *.f );

  die X::Pakku::Dist::Raku::Path::NoMeta.new: :$path unless $meta-file;

  nextwith $path, :$meta-file;

}
