.class Lcom/bzbs/lib/survey/util/AnimationPoint$6$1;
.super Landroid/os/CountDownTimer;
.source "AnimationPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$6;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPoint$6;JJLandroid/widget/Toast;)V
    .registers 7
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPoint$6;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 577
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$6$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$6;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$6$1;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$6$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 584
    return-void
.end method

.method public onTick(J)V
    .registers 4
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 579
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$6$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    return-void
.end method
