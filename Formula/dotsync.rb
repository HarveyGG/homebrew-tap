class Dotsync < Formula
  desc "A powerful and versatile dotfiles manager"
  homepage "https://github.com/HarveyGG/dotsync"
  url "https://github.com/HarveyGG/dotsync/archive/v1.0.11.tar.gz"
  sha256 "5c052666250d01b419b152e588c743e5a0029e1ffa68d9fd1ef2f39e52f47f6d"
  license "Non-Commercial"
  head "https://github.com/HarveyGG/dotsync.git", branch: "main"

  depends_on "uv"

  def install
    (bin/"dotsync").write <<~EOS
      #!/bin/bash
      exec #{Formula["uv"].opt_bin}/uvx --from dotsync-cli dotsync "$@"
    EOS
    
    chmod 0755, bin/"dotsync"
  end

  def caveats
    <<~EOS
      On first run, dotsync will automatically download Python and dependencies.
      This may take ~30 seconds, then subsequent runs are instant.
      
      No system Python installation required!
    EOS
  end

  test do
    assert_predicate bin/"dotsync", :exist?
    assert_predicate bin/"dotsync", :executable?
  end
end

