.class Lcom/actionbarsherlock/widget/ActivityChooserView$SetActivated;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetActivated"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 623
    return-void
.end method
