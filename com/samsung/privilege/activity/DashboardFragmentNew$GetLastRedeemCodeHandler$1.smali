.class Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    iput p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->val$response_text:Ljava/lang/String;

    .line 2592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 2595
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->val$response_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1ae

    .line 2596
    new-instance v21, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2597
    .local v21, "jsonRoot":Lorg/json/JSONArray;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_195

    .line 2598
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 2599
    .local v20, "jsonItem":Lorg/json/JSONObject;
    const-string v1, "Serial"

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2600
    .local v10, "strSerial":Ljava/lang/String;
    const-string v1, "PrivilegeMessage"

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2601
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    const-string v1, "CurrentDate"

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 2602
    .local v3, "currentDate":J
    const-string v1, "ExpireIn"

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 2604
    .local v8, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v2

    iget v2, v2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/samsung/privilege/UserLogin;->SetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v2

    iget v2, v2, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/samsung/privilege/UserLogin;->SetLastReDeemPrivilegeMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboardFromCatch()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$9(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    .line 2609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v1, :cond_11f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a1} :catch_17c

    move-result v1

    if-nez v1, :cond_11f

    .line 2611
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ClipboardManager;

    .line 2612
    .local v17, "clipboard":Landroid/content/ClipboardManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    const-string v2, "Your discount code is already in clipboard."

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ca} :catch_1c7

    .line 2619
    .end local v17    # "clipboard":Landroid/content/ClipboardManager;
    :goto_ca
    :try_start_ca
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2620
    .local v19, "intent":Landroid/content/Intent;
    const-string v1, "url"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2621
    const-string v1, "serial"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2622
    const-string v1, "enable_webview_back"

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2623
    const-string v1, "hide_serial"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2637
    .end local v3    # "currentDate":J
    .end local v8    # "longExpireIn":J
    .end local v10    # "strSerial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "jsonItem":Lorg/json/JSONObject;
    .end local v21    # "jsonRoot":Lorg/json/JSONArray;
    :goto_11e
    return-void

    .line 2626
    .restart local v3    # "currentDate":J
    .restart local v8    # "longExpireIn":J
    .restart local v10    # "strSerial":Ljava/lang/String;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v20    # "jsonItem":Lorg/json/JSONObject;
    .restart local v21    # "jsonRoot":Lorg/json/JSONArray;
    :cond_11f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v5

    iget v5, v5, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v7}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v11}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v13}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$10(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;
    invoke-static {v14}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;

    move-result-object v14

    iget-object v14, v14, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v15}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$7(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_17b} :catch_17c

    goto :goto_11e

    .line 2634
    .end local v3    # "currentDate":J
    .end local v8    # "longExpireIn":J
    .end local v10    # "strSerial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v20    # "jsonItem":Lorg/json/JSONObject;
    .end local v21    # "jsonRoot":Lorg/json/JSONArray;
    :catch_17c
    move-exception v18

    .line 2635
    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gErrorMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11e

    .line 2629
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v21    # "jsonRoot":Lorg/json/JSONArray;
    :cond_195
    :try_start_195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gErrorMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 2632
    .end local v21    # "jsonRoot":Lorg/json/JSONArray;
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gErrorMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1c5} :catch_17c

    goto/16 :goto_11e

    .line 2615
    .restart local v3    # "currentDate":J
    .restart local v8    # "longExpireIn":J
    .restart local v10    # "strSerial":Ljava/lang/String;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v20    # "jsonItem":Lorg/json/JSONObject;
    .restart local v21    # "jsonRoot":Lorg/json/JSONArray;
    :catch_1c7
    move-exception v1

    goto/16 :goto_ca
.end method