defmodule BiggerIsGreaterTest do
  use ExUnit.Case

  test "ab" do
    assert BiggerIsGreater.start("ab") == "ba"
  end

  test "abdc" do
    assert BiggerIsGreater.start("abdc") == "acbd"
  end

  test "aa" do
    assert BiggerIsGreater.start("aa") == "no answer"
  end

  test "dcba" do
    assert BiggerIsGreater.start("dcba") == "no answer"
  end

  test "fedcbabcd" do
    assert BiggerIsGreater.start("fedcbabcd") == "fedcbabdc"
  end

  test "abcfdda" do
    assert BiggerIsGreater.start("abcfdda") == "abdacdf"
  end

  test "zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgmw" do
    start = "zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgmw"
    result = "zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgwm"
    assert BiggerIsGreater.start(start) == result
  end

  test "zyyxwwtrrnmlggfeb" do
    start = "zyyxwwtrrnmlggfeb"
    result = "no answer"
    assert BiggerIsGreater.start(start) == result
  end

  test "dmsym" do
    start = "dmsym"
    result = "dmyms"
    assert BiggerIsGreater.start(start) == result
  end

  test "" do
    start = "teyjba"
    result = "tjabey"
    assert BiggerIsGreater.start(start) == result
  end

  test "Many questions" do
    questions = """
    zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgmw
    zyyxwwtrrnmlggfeb
    ocsmerkgidvddsazqxjbqlrrxcotrnfvtnlutlfcafdlwiismslaytqdbvlmcpapfbmzxmftrkkqvkpflxpezzapllerxyzlcf
    biehzcmjckznhwrfgglverxsezxuqpj
    rebjvsszebhehuojrkkhszxltyqfdvayusylgmgkdivzlpmmtvbsavxvydldmsym
    unpzhmbgrrs
    jprfovzkdlmdcesdcpdchcwoedjchcovklhrhlzfeeptoewcqpxg
    ywsfmynmiylcjgrfrrmtyeeykffzkuphpajndwxjteyjba
    dkuashjzsdq
    gwakhcpkolybihkmxyecrdhsvycjrljajlmlqgpcnmvvkjlkvdowzdfikh
    nebsajjbbuifimjpdcqfygeitief
    qetpicxagjkydehfnvfxrtigljlheulcsfidjjozbsnomygqbcmpffwswptbgkzrbgqwnczrcfynjmhebfbgseuhckbtuynvbo
    xuqfobndhsnsztifmqpnencxkllnpmbfqihtgdgxjhsvitlgtodhcydfb
    xqdwkjpkmrvkfnztozzlqtuxzxyxwowf
    yewluyxiwiprnajrtkeilolkmqidazhiar
    zzyyxxxxxwwwwwvvvvutttttsssssrrrrqqqppponnnnmmmmllkkjjjjiiggffffffeedddddbbbbbba
    hlvpzsfwnzsazeyaxaczkkrstiilkldupsqmzjnnsyoao
    zxvuutttrrrpoookiihhgggfdca
    zzyxxxxwwwvvuuuutsrrrrrqppppoooonnnnnnmmmlllllkkkjjjihgeeedddddcbaaa
    jnmvvaybncmoazujefictednlyjuhonfchvpqfelbwc
    mqyvczrlabtesyeiteblqklfhkchcryggkewpsfxsumvsjerssbltntydzwrjvf
    pzxgfnsapnchz
    erwidqokyjfpctpfxuojyloafghxgifdvhcmzjogoqoikjhjngbhfetvtraaojkfqvyujbhdizrkvqmfpzbidysbkhvuebtr
    xywhpljspfeiznzisvukwcaizeqwgavokqwxkrotsgchxdupsumgcynfrpcjsylnrzgxdfkctcrkcnvkxgtmiabghcorgnxak
    ywghcadvjurpjgwgfyis
    pqommldkafmnwzidydgjghxcbnwyjdxpvmkztdfmcxlkargafjzeye
    victjarfqkynoavgmhtpzbpcrblzyrzyxjrjlwjxmxdslsubyqdcqcdoenufzxqlty
    tlxqigvjmfuxku
    cryrpwccrnspwnruubekqkjmrkvwoohzvkctejwvkqfarqgbjzbggyxmecpshgccclykjd
    jhrmxpdfhjjubrycaurjjwvkasfyxjkf
    acs
    """

    answers = """
    zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgwm
    no answer
    ocsmerkgidvddsazqxjbqlrrxcotrnfvtnlutlfcafdlwiismslaytqdbvlmcpapfbmzxmftrkkqvkpflxpezzapllerxyzlfc
    biehzcmjckznhwrfgglverxsjepquxz
    rebjvsszebhehuojrkkhszxltyqfdvayusylgmgkdivzlpmmtvbsavxvydldmyms
    unpzhmbgrsr
    jprfovzkdlmdcesdcpdchcwoedjchcovklhrhlzfeeptoewcqxgp
    ywsfmynmiylcjgrfrrmtyeeykffzkuphpajndwxjtjabey
    dkuashjzsqd
    gwakhcpkolybihkmxyecrdhsvycjrljajlmlqgpcnmvvkjlkvdowzdfkhi
    nebsajjbbuifimjpdcqfygeitife
    qetpicxagjkydehfnvfxrtigljlheulcsfidjjozbsnomygqbcmpffwswptbgkzrbgqwnczrcfynjmhebfbgseuhckbtuynvob
    xuqfobndhsnsztifmqpnencxkllnpmbfqihtgdgxjhsvitlgtodhcyfbd
    xqdwkjpkmrvkfnztozzlqtuxzxyxwwfo
    yewluyxiwiprnajrtkeilolkmqidazhira
    no answer
    hlvpzsfwnzsazeyaxaczkkrstiilkldupsqmzjnnsyooa
    no answer
    no answer
    jnmvvaybncmoazujefictednlyjuhonfchvpqfelcbw
    mqyvczrlabtesyeiteblqklfhkchcryggkewpsfxsumvsjerssbltntydzwrvfj
    pzxgfnsapnczh
    erwidqokyjfpctpfxuojyloafghxgifdvhcmzjogoqoikjhjngbhfetvtraaojkfqvyujbhdizrkvqmfpzbidysbkhvuerbt
    xywhpljspfeiznzisvukwcaizeqwgavokqwxkrotsgchxdupsumgcynfrpcjsylnrzgxdfkctcrkcnvkxgtmiabghcorgnxka
    ywghcadvjurpjgwgfysi
    pqommldkafmnwzidydgjghxcbnwyjdxpvmkztdfmcxlkargafjzyee
    victjarfqkynoavgmhtpzbpcrblzyrzyxjrjlwjxmxdslsubyqdcqcdoenufzxqlyt
    tlxqigvjmfuxuk
    cryrpwccrnspwnruubekqkjmrkvwoohzvkctejwvkqfarqgbjzbggyxmecpshgcccydjkl
    jhrmxpdfhjjubrycaurjjwvkasfyxkfj
    asc
    """

    questions_list =
      questions
      |> String.trim()
      |> String.split("\n")

    answers_list =
      answers
      |> String.trim()
      |> String.split("\n")

    Enum.zip(questions_list, answers_list)
    |> Enum.map(fn {question, answer} ->
      assert BiggerIsGreater.start(question) == answer
    end)
  end
end
