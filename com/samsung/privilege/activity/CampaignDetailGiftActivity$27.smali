.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goRedeemCampaign(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2657
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->val$startTime:J

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 25
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 2678
    :try_start_0
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 2679
    .local v6, "endTime":J
    const-string/jumbo v14, "Campaign"

    const-string/jumbo v15, "redeemCampaign"

    const-string/jumbo v16, "Failure"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->val$startTime:J

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v14, v15, v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_107

    .line 2684
    .end local v6    # "endTime":J
    :goto_21
    const-string/jumbo v12, ""

    .line 2686
    .local v12, "response_text":Ljava/lang/String;
    :try_start_24
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_b0

    .line 2687
    .end local v12    # "response_text":Ljava/lang/String;
    .local v13, "response_text":Ljava/lang/String;
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "(doRedeem|onFailure)response_code="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",response="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_57} :catch_104

    move-object v12, v13

    .line 2692
    .end local v13    # "response_text":Ljava/lang/String;
    .restart local v12    # "response_text":Ljava/lang/String;
    :goto_58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2695
    :try_start_63
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2696
    .local v10, "json_result":Lorg/json/JSONObject;
    const-string/jumbo v14, "error"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 2697
    .local v9, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v14, "id"

    invoke-static {v9, v14}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2698
    .local v8, "id":Ljava/lang/String;
    const-string/jumbo v14, "message"

    invoke-static {v9, v14}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2699
    .local v11, "message":Ljava/lang/String;
    const-string/jumbo v14, "1411"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 2700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v14}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d3

    .line 2701
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v16, 0x7f09031d

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/bzbs/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_af} :catch_e3

    .line 2711
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "json_error":Lorg/json/JSONObject;
    .end local v10    # "json_result":Lorg/json/JSONObject;
    .end local v11    # "message":Ljava/lang/String;
    :goto_af
    return-void

    .line 2688
    :catch_b0
    move-exception v5

    .line 2689
    .local v5, "ex":Ljava/lang/Exception;
    :goto_b1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "(doRedeem|onFailure)response_code="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 2703
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "id":Ljava/lang/String;
    .restart local v9    # "json_error":Lorg/json/JSONObject;
    .restart local v10    # "json_result":Lorg/json/JSONObject;
    .restart local v11    # "message":Ljava/lang/String;
    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v14, v0, v1, v2, v3}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e2} :catch_e3

    goto :goto_af

    .line 2708
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "json_error":Lorg/json/JSONObject;
    .end local v10    # "json_result":Lorg/json/JSONObject;
    .end local v11    # "message":Ljava/lang/String;
    :catch_e3
    move-exception v4

    .line 2709
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v14, v0, v1, v2, v3}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_af

    .line 2706
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "id":Ljava/lang/String;
    .restart local v9    # "json_error":Lorg/json/JSONObject;
    .restart local v10    # "json_result":Lorg/json/JSONObject;
    .restart local v11    # "message":Ljava/lang/String;
    :cond_f4
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v14, v0, v1, v2, v3}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_103} :catch_e3

    goto :goto_af

    .line 2688
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "json_error":Lorg/json/JSONObject;
    .end local v10    # "json_result":Lorg/json/JSONObject;
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "response_text":Ljava/lang/String;
    .restart local v13    # "response_text":Ljava/lang/String;
    :catch_104
    move-exception v5

    move-object v12, v13

    .end local v13    # "response_text":Ljava/lang/String;
    .restart local v12    # "response_text":Ljava/lang/String;
    goto :goto_b1

    .line 2680
    .end local v12    # "response_text":Ljava/lang/String;
    :catch_107
    move-exception v14

    goto/16 :goto_21
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 2661
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2662
    .local v0, "endTime":J
    const-string/jumbo v3, "Campaign"

    const-string/jumbo v4, "redeemCampaign"

    const-string/jumbo v5, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->val$startTime:J

    sub-long v6, v0, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_57

    .line 2667
    .end local v0    # "endTime":J
    :goto_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 2668
    .local v2, "response_text":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(doRedeem|onComplete)response_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2672
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonRedeem(Ljava/lang/String;ZZ)V
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    .line 2673
    return-void

    .line 2663
    .end local v2    # "response_text":Ljava/lang/String;
    :catch_57
    move-exception v3

    goto :goto_19
.end method