.class Lcom/samsung/privilege/control/wheel/WheelView$1$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/wheel/WheelView$1;->run()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/privilege/control/wheel/WheelView$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/wheel/WheelView$1;II)V
    .registers 4

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->c:Lcom/samsung/privilege/control/wheel/WheelView$1;

    iput p2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->a:I

    iput p3, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->c:Lcom/samsung/privilege/control/wheel/WheelView$1;

    iget-object v0, v0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->c:Lcom/samsung/privilege/control/wheel/WheelView$1;

    iget-object v2, v2, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v2, v2, Lcom/samsung/privilege/control/wheel/WheelView;->f:I

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/wheel/WheelView;->smoothScrollTo(II)V

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->c:Lcom/samsung/privilege/control/wheel/WheelView$1;

    iget-object v0, v0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v1, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->b:I

    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->c:Lcom/samsung/privilege/control/wheel/WheelView$1;

    iget-object v2, v2, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    iget v2, v2, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView$1$2;->c:Lcom/samsung/privilege/control/wheel/WheelView$1;

    iget-object v0, v0, Lcom/samsung/privilege/control/wheel/WheelView$1;->a:Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-static {v0}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Lcom/samsung/privilege/control/wheel/WheelView;)V

    .line 145
    return-void
.end method
