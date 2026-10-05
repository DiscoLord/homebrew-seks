class Seks < Formula
  desc "Show the key bindings of an app in the terminal"
  homepage "https://github.com/DiscoLord/seks"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DiscoLord/seks/releases/download/v0.1.0/seks-macos-arm64.tar.gz"
      sha256 "74f05dfe1cb1e0c2bec34b2c2276f871a735db1dea431b0998632d8a2a905069"
    end
    on_intel do
      url "https://github.com/DiscoLord/seks/releases/download/v0.1.0/seks-macos-x86_64.tar.gz"
      sha256 "5615e715e6c8fb70bc770404b8dc990d5d0834db92ac735bd2e0c01913b1b6d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DiscoLord/seks/releases/download/v0.1.0/seks-linux-arm64.tar.gz"
      sha256 "981c484ea99b91df70823b15d04586a9fb45b3663cf2eb8f59472106b1cbb411"
    end
    on_intel do
      url "https://github.com/DiscoLord/seks/releases/download/v0.1.0/seks-linux-x86_64.tar.gz"
      sha256 "3763737635b8b05816a9edf34d80275408ebc3336548b68fcbde828645c69da3"
    end
  end

  def install
    bin.install "seks"
    bash_completion.install "completions/seks.bash" => "seks"
    zsh_completion.install "completions/_seks"
    fish_completion.install "completions/seks.fish"
  end

  test do
    assert_equal "seks #{version}\n", shell_output("#{bin}/seks --version")
  end
end
