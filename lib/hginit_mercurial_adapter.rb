module HgInit
class MercurialAdapterWithInit < Redmine::Scm::Adapters::MercurialAdapter
  def init path
    %x{hg init #{path}}
  end
end
end
