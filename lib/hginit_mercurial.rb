module HgInit
class MercurialWithInit < Repository::Mercurial
  unloadable
  def init path
    %x{hg init #{path}}
  end
  
end
end
