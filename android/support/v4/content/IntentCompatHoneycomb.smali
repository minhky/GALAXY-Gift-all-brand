.class Landroid/support/v4/content/IntentCompatHoneycomb;
.super Ljava/lang/Object;
.source "IntentCompatHoneycomb.java"


# direct methods
.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 24
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
