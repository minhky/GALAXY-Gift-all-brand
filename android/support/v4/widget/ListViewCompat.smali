.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method public static a(Landroid/widget/ListView;I)V
    .registers 4

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 37
    invoke-static {p0, p1}, Landroid/support/v4/widget/ListViewCompatKitKat;->a(Landroid/widget/ListView;I)V

    .line 41
    :goto_9
    return-void

    .line 39
    :cond_a
    invoke-static {p0, p1}, Landroid/support/v4/widget/ListViewCompatDonut;->a(Landroid/widget/ListView;I)V

    goto :goto_9
.end method
