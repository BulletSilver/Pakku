use Pakku::Log;

class X::Pakku {
  also is Exception;
}

class X::Pakku::Repo::CannotInstall {
  also is Exception;

  has Str $.repo;

  method message ( --> Str:D ) {

    "Repo: [$!repo] cannot Install";

  }
}

class X::Pakku::Ecosystem::Update {
  also is X::Pakku;

  has $.source;

  method message ( --> Str:D ) {

    "Eco: Cannot update source [$!source]";

  }

}

class X::Pakku::Ecosystem::NoMeta {
  also is X::Pakku;

  has $.ecosystem;

  method message ( --> Str:D ) {

    "Eco: No Meta in [$!ecosystem]";

  }

}

class X::Pakku::Ecosystem::NoCandy {
  also is X::Pakku;

  has $.depspec;

  method message ( --> Str:D ) {

    "Eco: No candies matching spec [$!depspec]";

  }

}

class X::Pakku::DepSpec::CannotParse {
  also is X::Pakku;

  has $.spec;

  method message ( --> Str:D ) {

    "DepSpec: Cannot parse spec [$!spec]";

  }

}

class X::Pakku::Build::Fail {
  also is X::Pakku;

  has $.dist;

  method message ( --> Str:D ) {

    "Build: Failed for dist [$!dist]";

  }

}

class X::Pakku::Test::Fail {
  also is X::Pakku;

  has $.dist;


  method message ( --> Str:D ) {

    "Test: Failed for dist [$!dist]";

  }

}

class X::Pakku::Dist::Raku::Path::NoMeta {
  also is X::Pakku;

  has $.path;

  method message ( --> Str:D ) {

    "Path: No META6.json file in path [$!path]";

  }
}

class X::Pakku::Dist::Bin::NotFound {
  also is X::Pakku;

  has $.name;

  method message ( --> Str:D ) {

    "Bin: Not found  [$!name]";

  }
}

class X::Pakku::Dist::Native::NotFound {
  also is X::Pakku;

  has $.name;

  method message ( --> Str:D ) {

    "Native: Not found  [$!name]";

  }
}

class X::Pakku::Parse::Cnf {
  also is X::Pakku;

  has $.cnf;


  method message ( --> Str:D ) {

    "Pakku: Cannot parse conf file [$!cnf]";

  }

}


class X::Pakku::Parse::Cmd {
  also is X::Pakku;

  has $.cmd;


  method message ( --> Str:D ) {

    "Pakku: Cannot parse cmd [$!cmd]";

  }

}


