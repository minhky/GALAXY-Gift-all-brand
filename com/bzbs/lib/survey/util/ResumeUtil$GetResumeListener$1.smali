.class Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

.field final synthetic val$allow_use:Z

.field final synthetic val$has_new_version:Z


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;ZZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    iput-boolean p2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->val$allow_use:Z

    iput-boolean p3, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->val$has_new_version:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->val$allow_use:Z

    if-nez v0, :cond_54

    .line 149
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "don\'t allow use, close application..."

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$string;->allow_use_message_en:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$string;->allow_use_message_th:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$200(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 159
    :goto_53
    return-void

    .line 152
    :cond_54
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->val$has_new_version:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a9

    .line 153
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "have new version?"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$string;->has_new_version_message_en:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$string;->has_new_version_message_th:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;->this$0:Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->access$200(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_53

    .line 156
    :cond_a9
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "do nothing..."

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53
.end method