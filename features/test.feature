Feature: user情報登録画面
  ・シナリオ１：userとして、入力項目のエラー表示を確認する。
  ・シナリオ２：userとして、項目に値を入力後遷移画面で入力内容が表示されていることを確認する。

  Scenario: 入力不備あり
    Given 画面が表示されている1

    When 必須項目未入力でIDが "navigateButton" のボタンを押下

    Then 名前未入力エラーが表示されている "名前は必須項目です。"
    Then メールアドレス未入力エラーが表示されている "メールアドレスは必須項目です。"
    Then パスワード未入力エラーが表示されている "パスワードは必須項目です。"

  Scenario: 入力不備無し
    Given 画面が表示されている2

    When 名前を入力 "テスト太郎"
    And メールアドレスを入力 "test@test.com"
    And パスワードを入力 "test1234"
    And IDが "navigateButton" のボタンを押下
    
    Then 確認画面に遷移する
    And 名前が表示されている "テスト太郎"
    And メールアドレスが表示されている "test@test.com"

