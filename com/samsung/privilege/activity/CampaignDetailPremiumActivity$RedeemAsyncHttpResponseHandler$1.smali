.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 35

    .prologue
    .line 1757
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    const-string v3, "<"

    const-string v6, "&lt;"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v6, "&gt;"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1759
    .local v30, "response_text_final":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2ee

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 1762
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1763
    .local v25, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1764
    .local v11, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1765
    .local v13, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1766
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 1767
    const-string v2, "ExpireIn"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v9

    .line 1769
    .local v9, "longExpireIn":J
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1770
    .local v31, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v31, :cond_1c6

    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c6

    .line 1771
    new-instance v19, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1772
    .local v19, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    .line 1774
    .local v20, "device_id":Ljava/lang/String;
    const-string v31, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 1775
    const-string v2, "<imei>"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1776
    const-string v2, "<serial>"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1777
    const-string v2, "<price>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1779
    move-object/from16 v32, v31

    .line 1788
    .local v32, "strNFCWriteBackEncrypt":Ljava/lang/String;
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1789
    .local v24, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1790
    const-string v2, "Serial"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v6, ">"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1792
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$4(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1813
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v20    # "device_id":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "jsonRoot":Lorg/json/JSONObject;
    .end local v31    # "strNFCWriteBack":Ljava/lang/String;
    .end local v32    # "strNFCWriteBackEncrypt":Ljava/lang/String;
    :cond_121
    :goto_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13e} :catch_236

    move-result v2

    if-nez v2, :cond_1c5

    .line 1816
    :try_start_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_14e} :catch_282
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_14e} :catch_236

    move-result-object v33

    .line 1819
    .local v33, "url":Ljava/lang/String;
    :try_start_14f
    const-string v2, "<uid>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1820
    new-instance v19, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1821
    .restart local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_185} :catch_38b
    .catch Lorg/json/JSONException; {:try_start_14f .. :try_end_185} :catch_236

    move-result-object v33

    .line 1826
    .end local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_186
    :try_start_186
    const-string v2, "https://"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ab

    const-string v2, "http://"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 1827
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1829
    :cond_1ab
    new-instance v29, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1830
    .local v29, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1c5} :catch_282
    .catch Lorg/json/JSONException; {:try_start_186 .. :try_end_1c5} :catch_236

    .line 1883
    .end local v29    # "openUrlIntent":Landroid/content/Intent;
    .end local v30    # "response_text_final":Ljava/lang/String;
    .end local v33    # "url":Ljava/lang/String;
    :cond_1c5
    :goto_1c5
    return-void

    .line 1809
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":J
    .restart local v11    # "serial":Ljava/lang/String;
    .restart local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v25    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v30    # "response_text_final":Ljava/lang/String;
    .restart local v31    # "strNFCWriteBack":Ljava/lang/String;
    :cond_1c6
    :try_start_1c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v12

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v14

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v15

    iget-object v15, v15, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v17

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v17

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_234
    .catch Lorg/json/JSONException; {:try_start_1c6 .. :try_end_234} :catch_236

    goto/16 :goto_121

    .line 1875
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v25    # "jsonRoot":Lorg/json/JSONObject;
    .end local v30    # "response_text_final":Ljava/lang/String;
    .end local v31    # "strNFCWriteBack":Ljava/lang/String;
    :catch_236
    move-exception v21

    .line 1876
    .local v21, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1877
    .local v28, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_273

    .line 1878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1880
    :cond_273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1831
    .end local v21    # "e":Lorg/json/JSONException;
    .end local v28    # "message":Ljava/lang/String;
    .restart local v30    # "response_text_final":Ljava/lang/String;
    :catch_282
    move-exception v21

    .line 1832
    .local v21, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    .line 1834
    .local v18, "blnIsAdmin":Z
    :try_start_285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_294} :catch_2bb
    .catch Lorg/json/JSONException; {:try_start_285 .. :try_end_294} :catch_236

    move-result v2

    if-eqz v2, :cond_299

    .line 1835
    const/16 v18, 0x1

    .line 1840
    :cond_299
    :goto_299
    if-eqz v18, :cond_2df

    .line 1841
    :try_start_29b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t go to website:\r\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1837
    :catch_2bb
    move-exception v22

    .line 1838
    .local v22, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$7(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_299

    .line 1843
    .end local v22    # "e2":Ljava/lang/Exception;
    :cond_2df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V
    :try_end_2ec
    .catch Lorg/json/JSONException; {:try_start_29b .. :try_end_2ec} :catch_236

    goto/16 :goto_1c5

    .line 1857
    .end local v18    # "blnIsAdmin":Z
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_2ee
    :try_start_2ee
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v27, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 1859
    .local v26, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1860
    .local v23, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1861
    .restart local v28    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37c

    .line 1862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36d

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    const v6, 0x7f0a0333

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_34c} :catch_34e
    .catch Lorg/json/JSONException; {:try_start_2ee .. :try_end_34c} :catch_236

    goto/16 :goto_1c5

    .line 1870
    .end local v23    # "id":Ljava/lang/String;
    .end local v26    # "json_error":Lorg/json/JSONObject;
    .end local v27    # "json_result":Lorg/json/JSONObject;
    .end local v28    # "message":Ljava/lang/String;
    :catch_34e
    move-exception v21

    .line 1871
    .restart local v21    # "e":Ljava/lang/Exception;
    :try_start_34f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1872
    .restart local v28    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_36b
    .catch Lorg/json/JSONException; {:try_start_34f .. :try_end_36b} :catch_236

    goto/16 :goto_1c5

    .line 1865
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v23    # "id":Ljava/lang/String;
    .restart local v26    # "json_error":Lorg/json/JSONObject;
    .restart local v27    # "json_result":Lorg/json/JSONObject;
    :cond_36d
    :try_start_36d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1868
    :cond_37c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_389
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_389} :catch_34e
    .catch Lorg/json/JSONException; {:try_start_36d .. :try_end_389} :catch_236

    goto/16 :goto_1c5

    .line 1822
    .end local v23    # "id":Ljava/lang/String;
    .end local v26    # "json_error":Lorg/json/JSONObject;
    .end local v27    # "json_result":Lorg/json/JSONObject;
    .end local v28    # "message":Ljava/lang/String;
    .restart local v33    # "url":Ljava/lang/String;
    :catch_38b
    move-exception v2

    goto/16 :goto_186
.end method
