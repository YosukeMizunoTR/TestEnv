
%******************************************************************************************
検証に必要な各関数の引数と戻り値を定義
%******************************************************************************************




%******************************************************************************************
%設計エラー検証
%
%関数名:trse_erchk
%
%[入力引数]
%   第1引数:FileName(char型)                     対象モデルが存在するフォルダの絶対パス
%   第2引数:ModelName(char型)                    対象モデル名(拡張子不要)
%   第3引数:ErchkConfig(構造体)                  実施するを行う重要度 Full:全て NonRecommend:必須+強く推奨
%           ErchkConfig.Change(Logical型)　　　　引数の設定をtrue:有効/false:無効(モデルの設定をそのまま実行。)
%           ---以下メンバはsldvoptionsの戻り値のパラメータと同値とすること。取りうる値はMathworksドキュメント参照---
%           ErchkConfig.DetectDeadLogic                             デッドロジック(一部)
%           ErchkConfig.DetectActiveLogic                           網羅的解析を実行
%           ErchkConfig.DeadLogicObjectives                         解析するカバレッジオブジェクティブ
%           ErchkConfig.DetectOutOfBounds                           範囲外配列アクセス
%           ErchkConfig.DetectDSMAccessViolations                   データストアのアクセス違反
%           ErchkConfig.DetectDivisionByZero                        ゼロ除算
%           ErchkConfig.DetectIntegerOverflow                       整数のオーバーフロー
%           ErchkConfig.DetectInfNaN                                非有限でNaNの浮動小数点値
%           ErchkConfig.DetectSubnormal                             非正規浮動小数点値
%           ErchkConfig.DesignMinMaxCheck                           指定された最小値と最大値の違反
%           ErchkConfig.DetectBlockInputRangeViolations             指定したブロック入力範囲違反
%           ErchkConfig.DetectHISMViolationsHisl_0002               残余演算および逆数演算の使用 - hisl_0002
%           ErchkConfig.DetectHISMViolationsHisl_0003               平方根演算の使用 - hisl_0003
%           ErchkConfig.DetectHISMViolationsHisl_0004               log演算およびlog10演算の使用 - hisl_0004
%           ErchkConfig.DetectHISMViolationsHisl_0028               Reciprocal Square Root ブロックの使用方法 -hisl_0028
%           ErchkConfig.MaxProcessTime                              最大解析時間
%           ErchkConfig.CovFilter                                   正当化ファイル適用有無
%           ErchkConfig.CovFilterFileName                           正当化ファイル
%[出力引数]
%   Rlt.Xresult(Logical型)  実施結果を返す。true:正常終了 false:実施結果NG or 実施出来ないなど
%   Rlt.Comment(chart型)    実施結果に対するコメント。NGの理由など
%******************************************************************************************


%******************************************************************************************
%ガイドラインチェック
%
%関数名:trse_mdlchk
%
%[入力引数]
%   第1引数:FileName(char型)      対象モデルが存在するフォルダの絶対パス
%   第2引数:ModelName(char型)     対象モデル名(拡張子不要)
%   第3引数:JsonMode(char型)      実施するを行う重要度 Full:全て MustHiWant:必須+強く推奨 Must:必須
%   第4引数:Justice(構造体)
% 　         Justice.Run(Logical型)　　正当化ファイルを適用するか true:適用false:非適用
%            Justice.File(char型)      正当化ファイル(拡張子も含む)を含むフルパス
%[出力引数]
%   Rlt.Xresult(Logical型)  実施結果を返す。true:正常終了 false:実施結果NG or 実施出来ないなど
%   Rlt.Comment(chart型)    実施結果に対するコメント。NGの理由など
%******************************************************************************************



%******************************************************************************************
%SimulinkTest 指定したテストファイルを実行する。
%
%関数名:trse_simulinktest
%
%[入力引数]
%   第1引数:FileName(char型)        対象モデルが存在するフォルダの絶対パス
%   第2引数:ModelName(char型)       対象モデル名(拡張子不要)
%   第3引数:TestMode(char型)        実施するテストファイルフルパス
%   第4引数:TestMode(double値)      本SimulinkTestを実施する工程(レポート名を切り分ける為)
%                                   1:MILS検証 2:BacktoBack 制御⇔実装モデル 3:BacktoBack モデル⇔コード
%[出力引数]
%   Rlt.Xresult(Logical型)      実施結果を返す。true:正常終了 false:実施結果NG or 実施出来ないなど
%   Rlt.Comment(chart型)        実施結果に対するコメント。NGの理由など
%******************************************************************************************